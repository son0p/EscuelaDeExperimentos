// C# Bbm Fm


// Sound chain
Gain master => dac;
SndBuf kick => master;
SndBuf hihat => master;
SndBuf snare => master;
// combination of Saw and Sin for bass, 
// just for texture, both play the same notes
SawOsc bass => master; 
SinOsc bass2 => master; 
TriOsc melo => NRev r => Pan2 p => dac;
SndBuf2 fx => dac;

// mixer 
.5 => float kickGain;
kickGain => kick.gain;
.1 => float hihatGain;
hihatGain => hihat.gain;
.8 => float snareGain;
snareGain => snare.gain;
.05 => float bassGain;
bassGain => bass.gain;
.3 => float bass2Gain;
bass2Gain => bass2.gain;
.07 => float meloGain;
meloGain => melo.gain;
.2 => fx.gain;
1 => float masterGain;
masterGain => master.gain;
.8 => float  fadeOutGain;
.2 => r.mix;

// initialize panning
0 => p.pan;


//set a duration from current time+30 sec
30::second + now => time end;

//Friendly conversión tu use tempo in bpm  
130.0 => float tempo;
(60.0/tempo)::second => dur quarter;

// array of strings (paths) to be randomly changed
string stereo_fxs[5];

// load soundfiles into path
me.dir() + "/audio/kick_01.wav" => kick.read; // directly to file read
me.dir() + "/audio/hihat_01.wav" => hihat.read;
me.dir() + "/audio/snare_01.wav" => snare.read;
me.dir() + "/audio/stereo_fx_01.wav" => stereo_fxs[0];
me.dir() + "/audio/stereo_fx_02.wav" =>  stereo_fxs[1];
me.dir() + "/audio/stereo_fx_03.wav" => stereo_fxs[2];
me.dir() + "/audio/stereo_fx_04.wav" => stereo_fxs[3];
me.dir() + "/audio/stereo_fx_05.wav" => stereo_fxs[4];


// set all playheads to end so no sound is made
kick.samples() => kick.pos;
hihat.samples() => hihat.pos;
snare.samples() => snare.pos;

// initialize arrays for a  16 step secuencer, with 1's and 0's visual feedback
[1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0] @=> int kickSeq[];
[0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0] @=> int snareSeq[];
[0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0] @=> int hihatSeq[];
[1, 1, 0, 1, 1, 0, 1, 0, 0, 1, 0, 1, 1, 0, 0, 1] @=> int bassSeq[];
[1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] @=> int meloSeq[];

// definition of scale
[50, 52, 53, 55, 57, 59, 60, 62] @=> int notes[];

// array for bass posible notes, grades of the scale 0 = root, 2 = Third etc..
[0, 2, 4] @=> int bassNotes[];

// array for melody  posible grades  
[0, 4, 5] @=> int meloNotes[];


// initialize counter variable
0 => int counter;

// infinite loop
while( now < end )
{
  // three diferent cycles to generate variety on drums
  counter % 16 => int step;
  counter % 32 => int longStep; 
  counter % 64 => int longestStep; 
    

  // Simple fade in using counter,  convert range 0 to 10 in range 0 to masterGain
  while ( counter < 10 )
  {
    (10 - 0 ) => float OldRange ;
    (masterGain - 0) => float NewRange ;
    counter => float OldValue;
    0 => float OldMin;
    0 => float NewMin;
    (((OldValue - OldMin) * NewRange) / OldRange) + NewMin => master.gain; 
    break;
  }
    
  //---- Drum Player ----------------
  // if step sequencer is 1 play kick, snare, hihat
  if (kickSeq[step] == 1)
    {
      0 => kick.pos;
    }
  
  if (snareSeq[step] == 1)
    {
      0 => snare.pos;
    }
  
  if (hihatSeq[step] == 1)
    {
      0 => hihat.pos;
    }
  
  /*logic for drum fills: in the final beats 
    of long cycles, random some drums,
    making 1 some array positions*/
  if( longestStep > 20 && longestStep < 31 )
    {
      Math.random2(0,1) => snareSeq[15];
      Math.random2(0,1) => kickSeq[13];
      Math.random2(0,1) => hihatSeq[11];
    }
  if( longestStep > 51 && longStep < 64 )
    {
      Math.random2(0,1) => snareSeq[14];
      Math.random2(0,1) => snareSeq[13];
      Math.random2(0,1) => kickSeq[11];
      Math.random2(0,1) => hihatSeq[9];
    }
  else
    {
      0 => snareSeq[15];
      0 => snareSeq[14];
      0 => snareSeq[13];
      0 => kickSeq[11];
      0 => hihatSeq[9];
    }
  
  // ---Bass player ---------------
  // root note for steps 0 to 9
  if ( ( step < 12 ) && ( bassSeq[step] == 1 ) ) 
    {
      bassGain => bass.gain;
      bass2Gain => bass2.gain;
      Std.mtof( notes[0] )/2 =>  bass.freq;
      Std.mtof( notes[0] )/2 => bass2.freq;
    }
  // random notes of the bassNotes Array when step pass 9
  if ( ( step > 12 ) && ( bassSeq[step] == 1 ) ) 
    {
      bassGain => bass.gain;
      bass2Gain => bass2.gain;
      Math.random2( 0, bassNotes.cap() ) => int noteBass;
      Std.mtof( notes[noteBass] )/2 => bass.freq;
      Std.mtof( notes[noteBass] )/2 => bass2.freq;
      
    }
  if ( bassSeq[step] == 0)
    {
      0 => bass.gain;
      0 => bass2.gain;
    }
  
  
  // ---Melody player----------
  /* play long note for intro, 
     when counter reach 64 read meloSeq to on and off notes
     when secuencer reach 12 position make some random notes
  */
  if ( counter > 63 && counter < 127 )
    {
      if ( meloSeq[step] == 1 )
	{
	  if ( step == 11 )
	    {
	      meloGain => melo.gain;
	      Std.mtof( notes[ meloNotes[0]] )*8 => melo.freq;
	    }
	  if ( step > 12 )
	    {
	      meloGain => melo.gain;
	      Math.random2( 0, meloNotes.cap() ) => int noteMelo;
	      Std.mtof( notes[noteMelo] )*2 => melo.freq;
	    }
	  else
	    {
	      meloGain => melo.gain;
	      Std.mtof( notes[ meloNotes[0]] )*4 => melo.freq;
	    }
	}
      else
	{
	  0 => melo.gain;
	}
    }
  /* change root note to position [1] of meloNotes array, 
     increment one octave, and alter panning */
  if( counter > 127 && counter < 191 )
    {
      if (meloSeq[step] == 1)
	{
	  if ( step == 9)
	    {
	      meloGain  => melo.gain;
	      Std.mtof( notes[ meloNotes[0]] )*8 => melo.freq;
	    }
	  if ( step > 9)
	    {
	      meloGain => melo.gain;
	      Math.random2( 0, meloNotes.cap() ) => int noteMelo;
	      Std.mtof( notes[noteMelo] )*2 => melo.freq;
	    }
	  else
	    {
	      Math.sin( now/.25::second*2*pi) => p.pan; // alter panning 
	      meloGain => melo.gain;
	      Std.mtof( notes[ meloNotes[1]] )*4 => melo.freq;
	    }
	}
      else
	{
	  0 => melo.gain;
	}
    }
  
  
  // ---Stereo Fx's---------- 
  if( longestStep == 0)
    {
      // random select between posible fxs
      Math.random2( 0, stereo_fxs.cap() -1) => int which; 
      stereo_fxs[which] => fx.read;
    }
  
  // Nasty fadout
  while ( counter > 220)
    {
      fadeOutGain - 0.05 => fadeOutGain;
      fadeOutGain => master.gain ;
      if ( fadeOutGain < 0)
	{
	  0 => master.gain;
	}
      break;
    }
  
  <<<  "Now:", now/second >>>;
  
  counter++;
  0.25::quarter => now;
}
