
Recomendaciones de dotación para estudios de grabación públicos en Medellín
===========================================================================

*Este documento habita de manera virtual en : https://goo.gl/VHTwaB puede encontrar una versión más actualizada allí.*

-   En el caso de equipos especializados (Hardware) es importante que la marca tenga representación local, para cuestiones de mantenimiento y garantía.
-   En lo posible buscar soluciones  de Software con código abierto.
-   En lo posible interconectar todos los espacios en una red (aparte de Internet) pues existen protocolos abiertos para transmisión de audio por red, zita-njbridge, open-AVB.

Equipos(Hardware)
-----------------

### Captura

-   ***Micrófonos***

-    ***Condensador***: Idealmente es importante tener pares de micrófonos de la misma referencia para posibles grabaciones en técnicas de microfonía estéreo, entonces conviene un par de  diafragma grande y un par de diafragma pequeño, si el presupuesto es ajustado se prefiere el par de diafragma grande, es fundamental que tenga capacidad de atenuación, ideal que tenga varios patrones polares, marcas como Audio Technica tienen una buena relación de calidad y precio.

-    ***Dinámicos***: se pueden seleccionar diferentes marcas y especificaciones, si no se va a conseguir un kit de batería sería importante tener tres o cuatro de la misma referencia para usar en los Toms de una batería.


-  ***Preamplificadores***: Es recomendable tener al menos dos preamplificadores de alta gama, hay fabricantes colombianos de buena calidad por ejemplo [Camilo Silva](https://www.google.com/url?q=http://camilosilvaf.com/&sa=D&usg=AFQjCNEy3jvfgFFhBfYzjG_2KJBx4e0ESg) ( [http://camilosilvaf.com/](https://www.google.com/url?q=http://camilosilvaf.com/&sa=D&usg=AFQjCNEy3jvfgFFhBfYzjG_2KJBx4e0ESg) )
-   ***Tarjeta de sonido***: considerar que sea compatible con GNU/Linux

  -   [USB](https://www.google.com/url?q=http://www.alsa-project.org/main/index.php/Matrix:Main&sa=D&usg=AFQjCNG_NVKgSNzbSe9ucmYulkDecChKcQ) ( [http://www.alsa-project.org/main/index.php/Matrix:Main](https://www.google.com/url?q=http://www.alsa-project.org/main/index.php/Matrix:Main&sa=D&usg=AFQjCNG_NVKgSNzbSe9ucmYulkDecChKcQ) )
  -   [Firewire ( http://ffado.org/?q=devicesupport/list )](https://www.google.com/url?q=http://ffado.org/?q%3Ddevicesupport/list&sa=D&usg=AFQjCNFIMchQh__X6ERRqHSOSbWelMb1Fw)

### Transmisión

-   Los espacios destinados a ensayos, grabación, estudios, que tengan algún tratamiento acústico deben ir interconectados con ductos de fácil acceso, por donde se puedan pasar cables de audio y/o red (cat5)
-   Con presupuestos limitados es importante que algunos recursos puedan ser usados en varias locaciones, entonces para la transmisión de múltiples señales de audio es preferible tener sub-snakes portables que cajas fijas con cables soldados.


### Reproducción

-   ***Monitores***: De acuerdo al  presupuesto lo importante es lograr una buena ubicación y aprender a conocerlos escuchando muchos referentes a travez de ellos, sirve tener un analizador de espectro para ayudar a conocer como responden los monitores sobre todo a las frecuencias bajas.
-   ***Subwoofer***: Dependiendo del tipo de monitores que se consigan puede ser importante tener un subwoofer para lograr una referencia en las frecuencias bajas, puede alinear en tiempo el punto de corte de los monitores con el subwofer usando un crossover y retraso digital, en software puede usar zita-lrx de Fons Adriaensen
-   ***Amplificadores de audífonos***: Se recomienda incluir algunos amplificadores individuales con entrada XLR, también puede tener unidades que agrupan de a cuatro  canales.

### Almacenamiento

Es importante contemplar protocolos de almacenamiento de los contenidos que genere el espacio, recomendamos usar programas como rsync ( [https://rsync.samba.org/](https://www.google.com/url?q=https://rsync.samba.org/&sa=D&usg=AFQjCNFrPV4or7odCao8p1iIMtmFLxDmEA) ) que permiten syncronización de copias de respaldo.

-   ***Discos duros externos***: Algunos expertos recomiendan usar los discos duros más pequeños del mercado, ej: en ves de conseguir un disco duro de 1 Tera conseguir dos de 500 Gigas, dicen más capacidad tenga el disco menos confiable es. Un recomendado es WD Black

Programas recomendados (software)
---------------------------------

### Sistema Operativo y entorno de audio

-    [KXStudio](https://www.google.com/url?q=http://kxstudio.linuxaudio.org/index.php&sa=D&usg=AFQjCNF23Ug4t_94-eSVcK3ztCHxh2fYsQ) ( [http://kxstudio.linuxaudio.org/](https://www.google.com/url?q=http://kxstudio.linuxaudio.org/&sa=D&usg=AFQjCNH3j9mCR2xDO7kfzQCQeZJBoHAyNg) ) para instalaciones permanentes
-   [ AVlinux](https://www.google.com/url?q=http://www.bandshed.net/AVLinux.html&sa=D&usg=AFQjCNERgJZGaa-pEU2Uh6FDbsPr0n3hJw)  ( [http://www.bandshed.net/AVLinux.html](https://www.google.com/url?q=http://www.bandshed.net/AVLinux.html&sa=D&usg=AFQjCNERgJZGaa-pEU2Uh6FDbsPr0n3hJw) ) para instalaciones temporales

### Estación de trabajo de audio digital (DAW)

-   Ardour ( [http://ardour.org/](https://www.google.com/url?q=http://ardour.org/&sa=D&usg=AFQjCNF4RJW93vsb8CG-AWFmfChO5Bwc2g) )

### Almacenamiento y control de versiones

-   GitHub.com ( control de versiones )
-   Archive.org ( almacenamiento remoto de contenidos, si publicidad )
-   [https://owncloud.org/](https://www.google.com/url?q=https://owncloud.org/&sa=D&usg=AFQjCNG2HRU5ZjXN5-EtB0JEPbzI9or65w) ( alternativa de nube )
-   [http://www.bhphotovideo.com/c/product/1119879-REG/wd\_wdbnez0240kbk\_nesn\_24tb\_4\_x\_6tb.html](https://www.google.com/url?q=http://www.bhphotovideo.com/c/product/1119879-REG/wd_wdbnez0240kbk_nesn_24tb_4_x_6tb.html&sa=D&usg=AFQjCNFwRYYprGtrAQlyfz9ly0cB7Z7aKQ) ( alternativa de cluster de discos duros )

Recomendaciones de construcción
-------------------------------

### Acometida eléctrica

Idealmente el circuito eléctrico en el que van a estar conectados los aparatos de audio con fines de grabación deben estar aislados de otros circuitos  y con tierra aparte, en los casos que esto no sea posible se puede considerar un transformador aislado.

Se puede leer más aquí : [http://www.allaboutcircuits.com/technical-articles/transformer-isolation/](https://www.google.com/url?q=http://www.allaboutcircuits.com/technical-articles/transformer-isolation/&sa=D&usg=AFQjCNE_31awjf9-qcvwNThDISkljf4jtw)

### Consideraciones Acústicas

Para espacios que buscan una grabación profesional de alto nivel se debe buscar un consultor acústico, algunos son: [http://www.aqstica.com/](https://www.google.com/url?q=http://www.aqstica.com/&sa=D&usg=AFQjCNGpGFPMnAFquMlhNSWHDXNhPAGGyA) [http://www.lemonarquitecturasas.com/](https://www.google.com/url?q=http://www.lemonarquitecturasas.com/&sa=D&usg=AFQjCNFzFZ5k_KLWPB6GaCgfZ36zEY0zGg) 

En instalaciones de menos compromiso tenemos dos frentes de posibilidades

***Aislamiento***: Pretende controlar la transferencia de sonido entre el interior y el exterior

-   Aisle ventanas, si es posible con ventanas acústicas, esto puede implicar instalar aire acondicionado en el interior.
-   Aisle puertas, si es posible puertas acústicas, de no ser posible busque que la puerta cierre lo mejor posible, puede poner un sello de neopreno o caucho alrededor de la puerta ( como una nevera ) para mejorar su cierre, es ideal que logre un cierre tipo L.
    Si la puerta es de madera hueca puede rellenar el hueco con lana de vidrio
-   Existe una transmisión mecánica que puede disminuirse flotando las superficies del objeto vibratorio ( ej: batería, tambores ) sobre neopreno o cauchos de abosorción acústica.
-   Los ductos de cables
-   Encamisar las tuberías hidráulicas en cañuela  de lana mineral
-   Sellar los pases sobre muros y entrepisos de tomas eléctricas, comunicaciones, seguridad, etc., así como las salidas hidráulicas y sanitarias.

***Acondicionamiento***: Pretende controlar el tiempo de reverberación y el balance entre las frecuencias.

-   Evite muros paralelos, también paralelismo entre techo y piso
-   Para distribuir de manera homogénea las frecuencias puede usar absorbentes,  difusores y reflectores acústicos

-   Para absorber frecuencias medias y altas use materiales absorbentes como lana de vidrio,
-   Para absorber frecuencias bajas use trampas para bajos y resonadores de Helmholtz
