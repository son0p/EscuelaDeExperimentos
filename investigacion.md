# Escena de medellín

Orden Alfabético

* Blue Art Musique
* Goes
* Jose Gallardo
* M.A.M.I.
* Mala
* Miguel Vega (Trance)
* Neuma
* Protov
* Velez
* Voodoo Noise

# Valores
1. Colaborativo
2. El todo es más que la suma de las partes
3. Aprendizaje signigicativo, análisis de contexto, sitematizado,
lo nuevo a partir de la realidad, anclado.
4. La meta es el proceso
5. Aceptación de las diferencias, crear Adaptadores

# Importante
* Investigación
* Sistematizacion (que se puedan replicar los procesos)
* Documentación (memoria que no se pierdan los porcesos)
* Seguimientos post escuela.
- Lo que no se dice pero sucede
- Muchas cosas no se enseñan se forman


# ChucK vs ?
I really like chuck, but compared to csound it's sonic capabilities is less interesting. Development of chuck is also sadly slow, but the syntax is great. You can get more out of supercollider, but i never got into that because of the syntax. But i guess it's just a matter of how much time you can afford to use on learning it.

I started with ChucK and it is simple and is indeed easy to do sample-accurate calculations. Stuff like manual FM is easy but also comes with some great primitives. It's also really good for sampling. There's a library called LiSa that you can build your own loopers with. It also has really interesting flow control ("shreds"). BUT ChucK is extremely simple (actually a strong asset). There is no garbage collection. There's no string processing. If you want to load a data file structured in your own way, you cannot process it without converting it to a ChucK-readable format first. I complained about this on the mailing list and tried writing my own extension to do this but no luck so far.


SuperCollider has a steeper initial learning curve (mostly the client-server thing) but once you get over the initial hump, you will discover that it has an even richer set of primitives than ChucK. In particular, there are a lot of filter types to choose from. There's even a full 8-operator FM oscillator. Using a couple noise generators, delays, and filters, you can get some compelling IDM sounds quickly.

I started learning SuperCollider by deconstructing sketches from the SC140 project, where people posted SuperCollider patches in the form of tweets, in less than 140 characters each. They're naturally unformatted, but most are very simple, and there are MP3 examples of each so it makes a good showcase.

Regardless of what tool you use, I recommend 1. making the simplest possible patch (emit a sine wave or similar) 2. Duplicate that patch 3. Make the next patch one step more complicated 4. Repeat steps 2 and 3.

 Amon Tobin's last album, ISAM. Probably not surprising since he used Kyma to create some of the sounds.

# Csound
 Dr. Richard Boulanger
 http://flossmanuals.net/csound/ 
Csound Power! by Jim Aikin video youtube.



---
María:  pues hay uno que se llama Garabatrónicos
para niños
apenas va a comenzar
pues el año
pasado hicimos prueba
piloto
y ya este año
es grupo proceso
el objetivo es
 Sent at 3:14 PM on Tuesday
 María:  " Aprender diferentes características de la programación a partir de la exploración de aplicaciones y software interactivo, que tienen como método didáctico la gamificación para la creación de contenidos.
"
ahí
hemos visto scratch
 María is typing…


---

Toyota Kata defines management as, “the systematic pursuit of desired conditions by utilizing human capabilities in a concerted way.” 

http://en.wikipedia.org/wiki/Toyota_Kata

----

C4 zeroMQ http://rfc.zeromq.org/spec:22

----

# Livecoding
## scene
http://vivo2013.cenart.tv/html/invitados.html
http://www.amniotica.tv/ bogota
http://toplap.org/


## Software
Overtone : SuperCollider + Clojure
http://overtone.github.io/

https://github.com/yaxu/Tidal/blob/master/doc/tidal.md




http://drops.dagstuhl.de/opus/volltexte/2014/4420/pdf/dagrep_v003_i009_p130_s13382.pdf


Live coding can play a role in these strategies. Live coding gives an audience opportunity
to see programming and to see a programmer, perhaps for the first time in their lives. They
see programming in a live coding situation not as a solitary, asocial activity, but as a creative
endeavor that creates a valuable product, music. Like Glitch, live coding can be engaging
and draws students into exploring technology.
We need research to explore the value of live coding in changing perceptions about
computer science, in engaging new students in exploring programming, and in the kinds
of programming environments that are successful as both live coding environments and
successful pedagogical tools.


http://vimeo.com/album/1991040  videos from labmacambria


------

On 11 October 2011 18:46, Renato Fabbri <renato.fabbri at gmail.com> wrote:

> Dear ChucKists, ChucKers and alike,
>
>
Hey Renato,


> We are going to do some live-coding performances in November here in
> Brazil,
> at São Carlos, and we wish to use ChucK as much as possible!
>
>
Cool!


> It would be great to hear from you all about your live-coding experiences
> with
> ChucK: how you did it, which codes did you use, what was the outcome, what
> would you do different etc..
>
>
I'll share some ideas that things that I found, these are just my opinions,
others might think the exact opposite (in that case I'd like to hear
why...).

First of all; set out to have fun. Clearly livecoding involves a display of
skill but that -imho- shouldn't be more important than the fun that should
be the core of musical performance. Music is, after all, a form of
entertainment, not of competition or whatever.

That said; practice is quite important in any instrument and livecoding is
far from a exception. If you practice for a hour each day even for just a
month you'll see yourself progress by leaps and bounds. With practice you'll
be more relaxed when there is a actual audience and that's good; under
stress people get less creative (typically). Sometimes record your practices
and always time how long it takes you to go from 0 to something interesting;
it's fun to see that time go down.

Pick a good environment to work with. I like the MiniAudicle because you can
use the hotkeys to control the VM from inside of the editor. IMHO that's far
more convenient than reaching for a mouse. Sadly on Linux the hotkeys to
switch between text buffers don't work and when creating a new buffer it
won't get keyboard-focus without touching the mouse, Linux users may want to
pick a different editor for livecoding and probably map some of their own
hotkeys. Whatever you pick; stick with it while practicing.

As part of your practice regime; look for some strategies that create nice
music/sounds for little code and practice variations of those. I wouldn't
try try to memorise a multi-page program to enter that and have The Perfect
Track play just as the audience has left. Instead look for something that
will sound ok in its most basic form and get progressively more interesting
as you flesh it out. As you build up a repertoire of these you'll be able to
re-combine them in different ways. This keeps your practices more exciting
and by doing things in different (slightly) ways each time you avoid the
risk of a single accident throwing off your plans during a performance.

If you use samples keep them in a set directory with a set naming
convention; you only need to set that up once and it'll save a lot of
confusion and annoyances in the future.

Things like libraries for scales and clocks and things are nice, but I found
that keeping everything as simple as possible often works at least as well
and it's less effort :-).

Using random functions is easy but ultimately leads to pieces with little
sense of progression. I tend to have a random value or two in the first
version of the code that I write, then replace it with something more
interesting as I flesh it out.

The STK instruments in ChucK are a nice place to start with for
sound-generators that take little code to sound nice. Bonus points for
finding new ways to use them that are unlike their intended purpose.

Hmmm, I think that's about it for the general tips. That's probably a good
moment to repeat how important practice is; experience with writing larger
ChucK pieces in a non-live setting is helpful but not the same as specific
practice. Oh, and the bit about the "fun", that's important too.

Yours,
Kas.

signal.automatique at gmail.com


----------

http://wiki.nosdigitais.teia.org.br/Lab_Macambira

http://sourceforge.net/projects/labmacambira/
codigo de algoritmos regulatorios
