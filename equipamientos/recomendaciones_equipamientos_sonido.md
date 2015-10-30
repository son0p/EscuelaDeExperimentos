Recomendaciones de dotación para estudios de grabación públicos en Medellín
Este documento habita de manera virtual en : 
En el caso de equipos especializados (Hardware) es importante que la marca tenga representación local, para cuestiones de mantenimiento y garantía.
En lo posible buscar soluciones  de Software con código abierto.
En lo posible interconectar todos los espacios en una red (aparte de Internet) pues existen protocolos abiertos para transmisión de audio por red, zita-njbridge, open-AVB.
Equipos(Hardware)
Captura
Micrófonos
Condensador: Idealmente es importante tener pares de micrófonos de la misma referencia para posibles grabaciones en técnicas de microfonía estéreo, entonces conviene un par de  diafragma grande y un par de diafragma pequeño, si el presupuesto es ajustado se prefiere el par de diafragma grande, es fundamental que tenga capacidad de atenuación, ideal que tenga varios patrones polares, marcas como Audio Technica tienen una buena relación de calidad y precio.
Dinámicos: se pueden seleccionar diferentes marcas y especificaciones, si no se va a conseguir un kit de batería sería importante tener tres o cuatro de la misma referencia para usar en los Toms de una batería.

Preamplificadores: Es recomendable tener al menos dos preamplificadores de alta gama, hay fabricantes colombianos de buena calidad por ejemplo Camilo Silva ( http://camilosilvaf.com/ )
Tarjeta de sonido: considerar que sea compatible con GNU/Linux 
USB  ( http://www.alsa-project.org/main/index.php/Matrix:Main )
Firewire ( http://ffado.org/?q=devicesupport/list )
Transmisión
Los espacios destinados a ensayos, grabación, estudios, que tengan algún tratamiento acústico deben ir interconectados con ductos de fácil acceso, por donde se puedan pasar cables de audio y/o red (cat5)
Con presupuestos limitados es importante que algunos recursos puedan ser usados en varias locaciones, entonces para la transmisión de múltiples señales de audio es preferible tener sub-snakes portables que cajas fijas con cables soldados.

Reproducción
Monitores: De acuerdo al  presupuesto lo importante es lograr una buena ubicación y aprender a conocerlos escuchando muchos referentes a travez de ellos, sirve tener un analizador de espectro para ayudar a conocer como responden los monitores sobre todo a las frecuencias bajas.
Subwoofer: Dependiendo del tipo de monitores que se consigan puede ser importante tener un subwoofer para lograr una referencia en las frecuencias bajas, puede alinear en tiempo el punto de corte de los monitores con el subwofer usando un crossover y retraso digital, en software puede usar zita-lrx de Fons Adriaensen
Amplificadores de audífonos: Se recomienda incluir algunos amplificadores individuales con entrada XLR, también puede tener unidades que agrupan de a cuatro  canales.
Almacenamiento
Es importante contemplar protocolos de almacenamiento de los contenidos que genere el espacio, recomendamos usar programas como rsync ( https://rsync.samba.org/ ) que permiten syncronización de copias de respaldo.
Discos duros externos: Algunos expertos recomiendan usar los discos duros más pequeños del mercado, ej: en ves de conseguir un disco duro de 1 Tera conseguir dos de 500 Gigas, dicen más capacidad tenga el disco menos confiable es. Un recomendado es WD Black
Programas recomendados (software)
Sistema Operativo y entorno de audio
 KXStudio ( http://kxstudio.linuxaudio.org/ ) para instalaciones permanentes
 AVlinux  ( http://www.bandshed.net/AVLinux.html ) para instalaciones temporales 
Estación de trabajo digital (DAW)
Ardour ( http://ardour.org/ ) 

Almacenamiento y control de versiones
GitHub.com ( control de versiones )
Archive.org ( almacenamiento remoto de contenidos, si publicidad )
https://owncloud.org/ ( alternativa de nube )
http://www.bhphotovideo.com/c/product/1119879-REG/wd_wdbnez0240kbk_nesn_24tb_4_x_6tb.html ( alternativa de cluster de discos duros )
Recomendaciones de construcción
Acometida eléctrica
Idealmente el circuito eléctrico en el que van a estar conectados los aparatos de audio con fines de grabación deben estar aislados de otros circuitos  y con tierra aparte, en los casos que esto no sea posible se puede considerar un transformador aislado. 
Se puede leer más aquí : http://www.allaboutcircuits.com/technical-articles/transformer-isolation/

Consideraciones Acústicas
Para espacios que buscan una grabación profesional de alto nivel se debe buscar un consultor acústico, algunos son: http://www.aqstica.com/ http://www.lemonarquitecturasas.com/ 
En instalaciones de menos compromiso tenemos dos frentes de posibilidades
Aislamiento: Pretende controlar la transferencia de sonido entre el interior y el exterior
Aisle ventanas, si es posible con ventanas acústicas, esto puede implicar instalar aire acondicionado en el interior.
Aisle puertas, si es posible puertas acústicas, de no ser posible busque que la puerta cierre lo mejor posible, puede poner un sello de neopreno o caucho alrededor de la puerta ( como una nevera ) para mejorar su cierre, es ideal que logre un cierre tipo L.
Si la puerta es de madera hueca puede rellenar el hueco con lana de vidrio 
Existe una transmisión mecánica que puede disminuirse flotando las superficies del objeto vibratorio ( ej: batería, tambores ) sobre neopreno o cauchos de abosorción acústica.
Los ductos de cables 
Encamisar las tuberías hidráulicas en cañuela  de lana mineral
Sellar los pases sobre muros y entrepisos de tomas eléctricas, comunicaciones, seguridad, etc., así como las salidas hidráulicas y sanitarias.

Acondicionamiento: Pretende controlar el tiempo de reverberación y el balance entre las frecuencias.
Evite muros paralelos, también paralelismo entre techo y piso
Para distribuir de manera homogénea las frecuencias puede usar absorbentes,  difusores y reflectores acústicos
Para absorber frecuencias medias y altas use materiales absorbentes como lana de vidrio, 
Para absorber frecuencias bajas use trampas para bajos y resonadores de Helmholtz


.


