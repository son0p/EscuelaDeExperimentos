// --- Requiere tener Sox y Node instalados
// Grabe sus propios 1.wav 2.wav 3.wav usando
// $ rec 1.wav
// $ rec 2.wav
// $ rec 3.wav
// Mezcle los tres audio usando:
// $ node mixer.js
// Escuche su resultado usando
// $ play mix.wav

var exec = require('child_process').exec;
exec('sox -m 1.wav 2.wav 3.wav mix.wav', function (error, stdout, stderr) {
  // output is in stdout
});
