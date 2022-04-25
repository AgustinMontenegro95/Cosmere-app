import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool elantris = false,
      almaEmperador = false,
      esperanzaElantris = false,
      imperioFinal = false,
      pozoAsencion = false,
      heroeEras = false,
      aley = false,
      sombrasIdentidad = false,
      braDuelos = false,
      historiaSecreta = false,
      undecimoMetal = false,
      alomante = false,
      alientoDioses = false,
      caminoReyes = false,
      palabrasRadiantes = false,
      danzante = false,
      juramentada = false,
      esquirlas = false,
      ritmoGuerra = false,
      ocaso = false,
      silencio = false,
      arena = false;
  void obtenerCategoria() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getBool('elantris') == null) {
      elantris = false;
    } else {
      setState(() {
        elantris = prefs.getBool('elantris')!;
      });
    }
    if (prefs.getBool('almaEmperador') == null) {
      almaEmperador = false;
    } else {
      setState(() {
        almaEmperador = prefs.getBool('almaEmperador')!;
      });
    }
    if (prefs.getBool('esperanzaElantris') == null) {
      esperanzaElantris = false;
    } else {
      setState(() {
        esperanzaElantris = prefs.getBool('esperanzaElantris')!;
      });
    }
    if (prefs.getBool('imperioFinal') == null) {
      imperioFinal = false;
    } else {
      setState(() {
        imperioFinal = prefs.getBool('imperioFinal')!;
      });
    }
    if (prefs.getBool('pozoAsencion') == null) {
      pozoAsencion = false;
    } else {
      setState(() {
        pozoAsencion = prefs.getBool('pozoAsencion')!;
      });
    }
    if (prefs.getBool('heroeEras') == null) {
      heroeEras = false;
    } else {
      setState(() {
        heroeEras = prefs.getBool('heroeEras')!;
      });
    }
    if (prefs.getBool('aley') == null) {
      aley = false;
    } else {
      setState(() {
        aley = prefs.getBool('aley')!;
      });
    }
    if (prefs.getBool('sombrasIdentidad') == null) {
      sombrasIdentidad = false;
    } else {
      setState(() {
        sombrasIdentidad = prefs.getBool('sombrasIdentidad')!;
      });
    }
    if (prefs.getBool('braDuelos') == null) {
      braDuelos = false;
    } else {
      setState(() {
        braDuelos = prefs.getBool('braDuelos')!;
      });
    }
    if (prefs.getBool('historiaSecreta') == null) {
      historiaSecreta = false;
    } else {
      setState(() {
        historiaSecreta = prefs.getBool('historiaSecreta')!;
      });
    }
    if (prefs.getBool('undecimoMetal') == null) {
      undecimoMetal = false;
    } else {
      setState(() {
        undecimoMetal = prefs.getBool('undecimoMetal')!;
      });
    }
    if (prefs.getBool('alomante') == null) {
      alomante = false;
    } else {
      setState(() {
        alomante = prefs.getBool('alomante')!;
      });
    }
    if (prefs.getBool('alientoDioses') == null) {
      alientoDioses = false;
    } else {
      setState(() {
        alientoDioses = prefs.getBool('alientoDioses')!;
      });
    }
    if (prefs.getBool('caminoReyes') == null) {
      caminoReyes = false;
    } else {
      setState(() {
        caminoReyes = prefs.getBool('caminoReyes')!;
      });
    }
    if (prefs.getBool('palabrasRadiantes') == null) {
      palabrasRadiantes = false;
    } else {
      setState(() {
        palabrasRadiantes = prefs.getBool('palabrasRadiantes')!;
      });
    }
    if (prefs.getBool('danzante') == null) {
      danzante = false;
    } else {
      setState(() {
        danzante = prefs.getBool('danzante')!;
      });
    }
    if (prefs.getBool('juramentada') == null) {
      juramentada = false;
    } else {
      setState(() {
        juramentada = prefs.getBool('juramentada')!;
      });
    }
    if (prefs.getBool('esquirlas') == null) {
      esquirlas = false;
    } else {
      setState(() {
        esquirlas = prefs.getBool('esquirlas')!;
      });
    }
    if (prefs.getBool('ritmoGuerra') == null) {
      ritmoGuerra = false;
    } else {
      setState(() {
        ritmoGuerra = prefs.getBool('ritmoGuerra')!;
      });
    }
    if (prefs.getBool('ocaso') == null) {
      ocaso = false;
    } else {
      setState(() {
        ocaso = prefs.getBool('ocaso')!;
      });
    }
    if (prefs.getBool('silencio') == null) {
      silencio = false;
    } else {
      setState(() {
        silencio = prefs.getBool('silencio')!;
      });
    }
    if (prefs.getBool('arena') == null) {
      arena = false;
    } else {
      setState(() {
        arena = prefs.getBool('arena')!;
      });
    }
  }

  @override
  void initState() {
    obtenerCategoria();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Stack(
      children: [
        Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Image(
              image: AssetImage('assets/images/imagen_fondo.png'),
              fit: BoxFit.contain,
            ),
            const Image(
              image: AssetImage('assets/images/imagen_fondo2.png'),
              fit: BoxFit.contain,
            ),
          ],
        ),
        Positioned(
          top: 70,
          left: 170,
          child: AvatarGlow(
            glowColor: Colors.amber,
            endRadius: 60.0,
            child: Material(
              // Replace this child with your own
              elevation: 8.0,
              shape: const CircleBorder(),
              child: GestureDetector(
                onTap: () {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (BuildContext context) {
                        return metodo(
                            context,
                            "Elantris",
                            "Elantris es, junto a El Aliento de los Dioses y El Imperio Final, uno de los tres libros recomendados para iniciarse en el Cosmere.",
                            "elantris.png",
                            "linkEbay",
                            1);
                      });
                },
                child: CircleAvatar(
                  backgroundColor:
                      elantris ? Colors.green[300] : Colors.grey[100],
                  radius: 20.0,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 190,
          left: -10,
          child: AvatarGlow(
            endRadius: 60.0,
            child: Material(
              // Replace this child with your own
              elevation: 8.0,
              shape: const CircleBorder(),
              child: GestureDetector(
                onTap: () {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (BuildContext context) {
                        return metodo(
                            context,
                            "El Alma del Emperador",
                            "El Alma del Emperador es un relato ambientado en el planeta donde sucede Elantris, pero en otro continente y se puede leer por separado. Se encuentra recogido en Arcanum Ilimitado.",
                            "Arcanum.png",
                            "linkEbay",
                            2);
                      });
                },
                child: CircleAvatar(
                  backgroundColor:
                      almaEmperador ? Colors.green[300] : Colors.grey[100],
                  radius: 20.0,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 158,
          right: 3,
          child: AvatarGlow(
            endRadius: 60.0,
            child: Material(
              // Replace this child with your own
              elevation: 8.0,
              shape: const CircleBorder(),
              child: GestureDetector(
                onTap: () {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (BuildContext context) {
                        return metodo(
                            context,
                            "La Esperanza de Elantris ",
                            "La Esperanza de Elantris es un relato que narra un punto de vista alternativo de un suceso de la novela original. Se encuentra recogido en Arcanum Ilimitado.",
                            "Arcanum.png",
                            "linkEbay",
                            3);
                      });
                },
                child: CircleAvatar(
                  backgroundColor:
                      esperanzaElantris ? Colors.green[300] : Colors.grey[100],
                  radius: 20.0,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 286,
          left: 65,
          child: AvatarGlow(
            endRadius: 60.0,
            child: Material(
              // Replace this child with your own
              elevation: 8.0,
              shape: const CircleBorder(),
              child: GestureDetector(
                onTap: () {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (BuildContext context) {
                        return metodo(
                            context,
                            "El Undécimo metal ",
                            "El Undécimo Metal es un relato corto que viene a ser una precuela de los acontecimientos que se explican en El Imperio Final, y vale la pena leerlo al acabar dicha novela. Se encuentra recogido en Arcanum Ilimitado.",
                            "Arcanum.png",
                            "linkEbay",
                            4);
                      });
                },
                child: CircleAvatar(
                  backgroundColor:
                      undecimoMetal ? Colors.green[300] : Colors.grey[100],
                  radius: 20.0,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 375,
          right: 60,
          child: AvatarGlow(
            glowColor: const Color.fromARGB(255, 243, 166, 78),
            endRadius: 60.0,
            child: Material(
              // Replace this child with your own
              elevation: 8.0,
              shape: const CircleBorder(),
              child: GestureDetector(
                onTap: () {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (BuildContext context) {
                        return metodo(
                            context,
                            "El Imperio Final",
                            "Si te gustan las sagas, El Imperio Final, novela con la que se inicia Nacidos de la Bruma, es otro de los puntos recomendados de entrada al Cosmere junto a Elantris y El Aliento de los Dioses.",
                            "imperio_final.png",
                            "linkEbay",
                            5);
                      });
                },
                child: CircleAvatar(
                  backgroundColor:
                      imperioFinal ? Colors.green[300] : Colors.grey[100],
                  radius: 20.0,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 483,
          left: 19,
          child: AvatarGlow(
            glowColor: const Color.fromARGB(255, 156, 95, 14),
            endRadius: 60.0,
            child: Material(
              // Replace this child with your own
              elevation: 8.0,
              shape: const CircleBorder(),
              child: GestureDetector(
                onTap: () {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (BuildContext context) {
                        return metodo(
                            context,
                            "El Pozo de la Asencion",
                            "El Pozo de la Ascensión es la segunda entrega de Nacidos de la Bruma Era 1",
                            "pozo_asencion.png",
                            "linkEbay",
                            6);
                      });
                },
                child: CircleAvatar(
                  backgroundColor:
                      pozoAsencion ? Colors.green[300] : Colors.grey[100],
                  radius: 20.0,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 564,
          right: 22,
          child: AvatarGlow(
            endRadius: 60.0,
            child: Material(
              // Replace this child with your own
              elevation: 8.0,
              shape: const CircleBorder(),
              child: GestureDetector(
                onTap: () {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (BuildContext context) {
                        return metodo(
                            context,
                            "Alomante Jak",
                            "Alomante Jak es un relato corto sobre un personaje ficticio cuyas aventuras se publican en el Diario de Elendel, y que aparece por primera vez en Aleación de Ley. Se encuentra recogido en Arcanum Ilimitado.",
                            "Arcanum.png",
                            "linkEbay",
                            7);
                      });
                },
                child: CircleAvatar(
                  backgroundColor:
                      alomante ? Colors.green[300] : Colors.grey[100],
                  radius: 20.0,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 690,
          right: 160,
          child: AvatarGlow(
            glowColor: const Color.fromARGB(255, 123, 144, 236),
            endRadius: 60.0,
            child: Material(
              // Replace this child with your own
              elevation: 8.0,
              shape: const CircleBorder(),
              child: GestureDetector(
                onTap: () {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (BuildContext context) {
                        return metodo(
                            context,
                            "Aleación de Ley",
                            "Aleación de Ley es la primera entrega de la segunda Era de Nacidos de la Bruma, y tiene lugar trescientos años después del Héroe de las Eras.",
                            "aleacion_ley.jpg",
                            "linkEbay",
                            8);
                      });
                },
                child: CircleAvatar(
                  backgroundColor: aley ? Colors.green[300] : Colors.grey[100],
                  radius: 20.0,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 868,
          right: -12,
          child: AvatarGlow(
            glowColor: const Color.fromARGB(255, 59, 211, 127),
            endRadius: 60.0,
            child: Material(
              // Replace this child with your own
              elevation: 8.0,
              shape: const CircleBorder(),
              child: GestureDetector(
                onTap: () {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (BuildContext context) {
                        return metodo(
                            context,
                            "Sombras de Identidad",
                            "Sombras de Identidad es la segunda entrega de Nacidos de la Bruma Era 2",
                            "sombras_identidad.jpg",
                            "linkEbay",
                            9);
                      });
                },
                child: CircleAvatar(
                  backgroundColor:
                      sombrasIdentidad ? Colors.green[300] : Colors.grey[100],
                  radius: 20.0,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 905,
          right: 185,
          child: AvatarGlow(
            glowColor: const Color.fromARGB(255, 59, 211, 127),
            endRadius: 60.0,
            child: Material(
              // Replace this child with your own
              elevation: 8.0,
              shape: const CircleBorder(),
              child: GestureDetector(
                onTap: () {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (BuildContext context) {
                        return metodo(
                            context,
                            "Brazales de Duelo ",
                            "Brazales de Duelo es la tercera entrega de Nacidos de la Bruma Era 2. El libro que cierra la saga, El Metal Perdido, se publicará en inglés en navidades de 2022.",
                            "brazaletes_duelo.png",
                            "linkEbay",
                            10);
                      });
                },
                child: CircleAvatar(
                  backgroundColor:
                      braDuelos ? Colors.green[300] : Colors.grey[100],
                  radius: 20.0,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 983,
          left: 1,
          child: AvatarGlow(
            glowColor: const Color.fromARGB(255, 151, 103, 12),
            endRadius: 60.0,
            child: Material(
              // Replace this child with your own
              elevation: 8.0,
              shape: const CircleBorder(),
              child: GestureDetector(
                onTap: () {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (BuildContext context) {
                        return metodo(
                            context,
                            "El Heroe de las Eras",
                            "El Héroe de las Eras cierra la primera trilogía de Nacidos de la Bruma Era 1",
                            "heroe_de_eras.jpg",
                            "linkEbay",
                            11);
                      });
                },
                child: CircleAvatar(
                  backgroundColor:
                      heroeEras ? Colors.green[300] : Colors.grey[100],
                  radius: 20.0,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 1071,
          right: 8,
          child: AvatarGlow(
            endRadius: 60.0,
            child: Material(
              // Replace this child with your own
              elevation: 8.0,
              shape: const CircleBorder(),
              child: GestureDetector(
                onTap: () {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (BuildContext context) {
                        return metodo(
                            context,
                            "Historia secreta",
                            "Historia Secreta es un relato corto que temporalmente ocurre tras El Héroe de las Eras, pero cuya lectura es más impactante tras Brazales de Duelo. Se encuentra recogido en Arcanum Ilimitado. ",
                            "Arcanum.png",
                            "linkEbay",
                            12);
                      });
                },
                child: CircleAvatar(
                  backgroundColor:
                      historiaSecreta ? Colors.green[300] : Colors.grey[100],
                  radius: 20.0,
                ),
              ),
            ),
          ),
        ),
        //Segundo fondo---------------------------------------------------------
        Positioned(
          bottom: 1000,
          left: 45,
          child: AvatarGlow(
            glowColor: const Color.fromARGB(255, 42, 228, 228),
            endRadius: 60.0,
            child: Material(
              // Replace this child with your own
              elevation: 8.0,
              shape: const CircleBorder(),
              child: GestureDetector(
                onTap: () {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (BuildContext context) {
                        return metodo(
                            context,
                            "El Aliento de los Dioses",
                            "El Aliento de los Dioses es uno de los tres puntos de entrada recomendados al Cosmere. Se trata de una novela autoconclusiva, cuya lectura es muy recomendable antes de adentrarse en El Archivo de las Tormentas.",
                            "warbreaker.jpg",
                            "linkEbay",
                            13);
                      });
                },
                child: CircleAvatar(
                  backgroundColor:
                      alientoDioses ? Colors.green[300] : Colors.grey[100],
                  radius: 20.0,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 860,
          right: 35,
          child: AvatarGlow(
            glowColor: const Color.fromARGB(255, 233, 182, 14),
            endRadius: 60.0,
            child: Material(
              // Replace this child with your own
              elevation: 8.0,
              shape: const CircleBorder(),
              child: GestureDetector(
                onTap: () {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (BuildContext context) {
                        return metodo(
                            context,
                            "El Camino de los Reyes",
                            "El Camino de los Reyes es la novela que inicia El Archivo de las Tormentas, la obra magna de Brandon Sanderson y el punto donde a día de hoy converge todo el Cosmere, por lo que no es una buena obra para adentrarse en este universo. Para ello recomendamos: Elantris, El Aliento de los Dioses o El Imperio Final.",
                            "camino_reyes.jpg",
                            "linkEbay",
                            14);
                      });
                },
                child: CircleAvatar(
                  backgroundColor:
                      caminoReyes ? Colors.green[300] : Colors.grey[100],
                  radius: 20.0,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 750,
          left: 30,
          child: AvatarGlow(
            glowColor: const Color.fromARGB(255, 207, 188, 18),
            endRadius: 60.0,
            child: Material(
              // Replace this child with your own
              elevation: 8.0,
              shape: const CircleBorder(),
              child: GestureDetector(
                onTap: () {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (BuildContext context) {
                        return metodo(
                            context,
                            "Palabras Radiantes",
                            "Palabras Radiantes es la segunda entrega del Archivo de las Tormentas.",
                            "palabras_radiantes.jpg",
                            "linkEbay",
                            15);
                      });
                },
                child: CircleAvatar(
                  backgroundColor:
                      palabrasRadiantes ? Colors.green[300] : Colors.grey[100],
                  radius: 20.0,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 683,
          left: 179,
          child: AvatarGlow(
            endRadius: 60.0,
            child: Material(
              // Replace this child with your own
              elevation: 8.0,
              shape: const CircleBorder(),
              child: GestureDetector(
                onTap: () {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (BuildContext context) {
                        return metodo(
                            context,
                            "Danzante del Filo",
                            "Danzante del Filo es un relato corto que sucede entre Palabras Radiantes y Juramentada, que vale la pena leer entre ambas novelas. Se encuentra recogido en Arcanum Ilimitado. ",
                            "Arcanum.png",
                            "linkEbay",
                            16);
                      });
                },
                child: CircleAvatar(
                  backgroundColor:
                      danzante ? Colors.green[300] : Colors.grey[100],
                  radius: 20.0,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 567,
          left: 35,
          child: AvatarGlow(
            glowColor: const Color.fromARGB(255, 155, 121, 12),
            endRadius: 60.0,
            child: Material(
              // Replace this child with your own
              elevation: 8.0,
              shape: const CircleBorder(),
              child: GestureDetector(
                onTap: () {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (BuildContext context) {
                        return metodo(
                            context,
                            "Juramentada ",
                            "Juramentada es la tercera entrega del Archivo de las Tormentas.",
                            "juramentada.jpg",
                            "linkEbay",
                            17);
                      });
                },
                child: CircleAvatar(
                  backgroundColor:
                      juramentada ? Colors.green[300] : Colors.grey[100],
                  radius: 20.0,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 565,
          right: 41,
          child: AvatarGlow(
            glowColor: const Color.fromARGB(255, 18, 82, 219),
            endRadius: 60.0,
            child: Material(
              // Replace this child with your own
              elevation: 8.0,
              shape: const CircleBorder(),
              child: GestureDetector(
                onTap: () {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (BuildContext context) {
                        return metodo(
                            context,
                            "Esquirla del Amanecer ",
                            "Esquirla del Amanecer es un relato corto que tiene lugar entre Juramentada y El Ritmo de la Guerra y que resulta esclarecedor desde un punto de vista cosmeriano.",
                            "esquirlas_amanecer.jpg",
                            "linkEbay",
                            18);
                      });
                },
                child: CircleAvatar(
                  backgroundColor:
                      esquirlas ? Colors.green[300] : Colors.grey[100],
                  radius: 20.0,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 405,
          right: 153,
          child: AvatarGlow(
            glowColor: const Color.fromARGB(255, 48, 107, 235),
            endRadius: 60.0,
            child: Material(
              // Replace this child with your own
              elevation: 8.0,
              shape: const CircleBorder(),
              child: GestureDetector(
                onTap: () {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (BuildContext context) {
                        return metodo(
                            context,
                            "El Ritmo de la Guerra",
                            "El Ritmo de la Guerra es la cuarta entrega del Archivo de las Tormentas. Recomendamos haber leído todo lo que aparece en el camino desde Elantris hasta aquí antes de leer este libro.",
                            "ritmo_de_guerra.jpg",
                            "linkEbay",
                            19);
                      });
                },
                child: CircleAvatar(
                  backgroundColor:
                      ritmoGuerra ? Colors.green[300] : Colors.grey[100],
                  radius: 20.0,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 300,
          left: 10,
          child: AvatarGlow(
            endRadius: 60.0,
            child: Material(
              // Replace this child with your own
              elevation: 8.0,
              shape: const CircleBorder(),
              child: GestureDetector(
                onTap: () {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (BuildContext context) {
                        return metodo(
                            context,
                            "Sexto del Ocaso",
                            "Sexto del Ocaso es un relato corto que puede leerse de forma independiente a cualquier novela del Cosmere. Brandon está escribiendo una continuación muy, pero que muy prometedora aunque aún faltan años para su publicación. Se encuentra recogido en Arcanum Ilimitado.",
                            "Arcanum.png",
                            "linkEbay",
                            20);
                      });
                },
                child: CircleAvatar(
                  backgroundColor: ocaso ? Colors.green[300] : Colors.grey[100],
                  radius: 20.0,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 190,
          right: 37,
          child: AvatarGlow(
            endRadius: 60.0,
            child: Material(
              // Replace this child with your own
              elevation: 8.0,
              shape: const CircleBorder(),
              child: GestureDetector(
                onTap: () {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (BuildContext context) {
                        return metodo(
                            context,
                            "Arena Blanca",
                            "Arena Blanca es una saga de tres novelas gráficas que está a la espera de ser reeditada con material adicional en inglés (y traducido al castellano) entre 2022 y 2023. Se puede leer de forma individual. Arcanum Ilimitado contiene unas páginas de muestra.",
                            "arena_blanca.jpg",
                            "linkEbay",
                            21);
                      });
                },
                child: CircleAvatar(
                  backgroundColor: arena ? Colors.green[300] : Colors.grey[100],
                  radius: 20.0,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 90,
          left: 71,
          child: AvatarGlow(
            endRadius: 60.0,
            child: Material(
              // Replace this child with your own
              elevation: 8.0,
              shape: const CircleBorder(),
              child: GestureDetector(
                onTap: () {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (BuildContext context) {
                        return metodo(
                            context,
                            "Sombras por Silencio en los bosques del infierno ",
                            "junto a Sexto del Ocaso, uno de los relatos cortos más originales e intrigantes que ha escrito Brandon en el Cosmere. Se encuentra recogido en Arcanum Ilimitado y se puede leer de forma independiente a cualquier novela de este universo literario.",
                            "Arcanum.png",
                            "linkEbay",
                            22);
                      });
                },
                child: CircleAvatar(
                  backgroundColor:
                      silencio ? Colors.green[300] : Colors.grey[100],
                  radius: 20.0,
                ),
              ),
            ),
          ),
        ),
        //Soludev
        Positioned(
          bottom: 5,
          left: 140,
          child: Row(
            children: [
              const Icon(
                Icons.developer_mode_rounded,
                color: Colors.white,
                size: 25,
              ),
              const Text(
                "Impulsado por: ",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              SizedBox(
                width: 70,
                height: 70,
                child: GestureDetector(
                  onTap: () async {
                    final Uri _url = Uri.parse('https://soludevs.web.app');
                    if (await canLaunchUrl(_url)) {
                      await launchUrl(_url);
                    } else {
                      throw 'No se pudo inciar $_url';
                    }
                  },
                  child: const Image(
                      image: AssetImage('assets/images/soludev_logo_mono.png')),
                ),
              )
            ],
          ),
        )
      ],
    )));
  }

  StatefulBuilder metodo(BuildContext context, String titulo, String des,
      String img, String ebay, int b) {
    return StatefulBuilder(
      builder: (context, setState) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: Stack(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(
                  left: 20, top: 45 + 20, right: 20, bottom: 20),
              margin: const EdgeInsets.only(top: 45),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  // ignore: prefer_const_literals_to_create_immutables
                  boxShadow: [
                    const BoxShadow(
                        color: Colors.black,
                        offset: Offset(0, 10),
                        blurRadius: 10),
                  ]),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    titulo.toString(),
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    des.toString(),
                    style: const TextStyle(fontSize: 14),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  leido(setState, b),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(
                        onPressed: () async {
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          "Cerrar",
                          style: TextStyle(fontSize: 18),
                        )),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 70,
              right: 70,
              child: SizedBox(
                width: 20,
                height: 140,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(45)),
                  child: Image(
                    image: AssetImage('assets/images/$img'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  CheckboxListTile leido(StateSetter setState, int b) {
    switch (b) {
      case 1:
        return CheckboxListTile(
            value: elantris,
            title: Text(
              elantris ? "Leido" : "Aun no Leido",
              style: const TextStyle(fontSize: 24),
            ),
            onChanged: (elantris) async {
              setState(() {
                this.elantris = elantris!;
              });
              this.setState(() {});
              // Obtain shared preferences.
              final prefs = await SharedPreferences.getInstance();
              await prefs.setBool('elantris', elantris!);
            });
      case 2:
        return CheckboxListTile(
            value: almaEmperador,
            title: Text(
              almaEmperador ? "Leido" : "Aun no Leido",
              style: const TextStyle(fontSize: 24),
            ),
            onChanged: (almaEmperador) async {
              setState(() {
                this.almaEmperador = almaEmperador!;
              });
              this.setState(() {});
              // Obtain shared preferences.
              final prefs = await SharedPreferences.getInstance();
              await prefs.setBool('almaEmperador', almaEmperador!);
            });
      case 3:
        return CheckboxListTile(
            value: esperanzaElantris,
            title: Text(
              esperanzaElantris ? "Leido" : "Aun no Leido",
              style: const TextStyle(fontSize: 24),
            ),
            onChanged: (esperanzaElantris) async {
              setState(() {
                this.esperanzaElantris = esperanzaElantris!;
              });
              this.setState(() {});
              // Obtain shared preferences.
              final prefs = await SharedPreferences.getInstance();
              await prefs.setBool('esperanzaElantris', esperanzaElantris!);
            });

      case 4:
        return CheckboxListTile(
            value: undecimoMetal,
            title: Text(
              undecimoMetal ? "Leido" : "Aun no Leido",
              style: const TextStyle(fontSize: 24),
            ),
            onChanged: (undecimoMetal) async {
              setState(() {
                this.undecimoMetal = undecimoMetal!;
              });
              this.setState(() {});
              // Obtain shared preferences.
              final prefs = await SharedPreferences.getInstance();
              await prefs.setBool('undecimoMetal', undecimoMetal!);
            });
      case 5:
        return CheckboxListTile(
            value: imperioFinal,
            title: Text(
              imperioFinal ? "Leido" : "Aun no Leido",
              style: const TextStyle(fontSize: 24),
            ),
            onChanged: (imperioFinal) async {
              setState(() {
                this.imperioFinal = imperioFinal!;
              });
              this.setState(() {});
              // Obtain shared preferences.
              final prefs = await SharedPreferences.getInstance();
              await prefs.setBool('imperioFinal', imperioFinal!);
            });
      case 6:
        return CheckboxListTile(
            value: pozoAsencion,
            title: Text(
              pozoAsencion ? "Leido" : "Aun no Leido",
              style: const TextStyle(fontSize: 24),
            ),
            onChanged: (pozoAsencion) async {
              setState(() {
                this.pozoAsencion = pozoAsencion!;
              });
              this.setState(() {});
              // Obtain shared preferences.
              final prefs = await SharedPreferences.getInstance();
              await prefs.setBool('pozoAsencion', pozoAsencion!);
            });
      case 7:
        return CheckboxListTile(
            value: alomante,
            title: Text(
              alomante ? "Leido" : "Aun no Leido",
              style: const TextStyle(fontSize: 24),
            ),
            onChanged: (alomante) async {
              setState(() {
                this.alomante = alomante!;
              });
              this.setState(() {});
              // Obtain shared preferences.
              final prefs = await SharedPreferences.getInstance();
              await prefs.setBool('alomante', alomante!);
            });
      case 8:
        return CheckboxListTile(
            value: aley,
            title: Text(
              aley ? "Leido" : "Aun no Leido",
              style: const TextStyle(fontSize: 24),
            ),
            onChanged: (aley) async {
              setState(() {
                this.aley = aley!;
              });
              this.setState(() {});
              // Obtain shared preferences.
              final prefs = await SharedPreferences.getInstance();
              await prefs.setBool('aley', aley!);
            });
      case 9:
        return CheckboxListTile(
            value: sombrasIdentidad,
            title: Text(
              sombrasIdentidad ? "Leido" : "Aun no Leido",
              style: const TextStyle(fontSize: 24),
            ),
            onChanged: (sombrasIdentidad) async {
              setState(() {
                this.sombrasIdentidad = sombrasIdentidad!;
              });
              this.setState(() {});
              // Obtain shared preferences.
              final prefs = await SharedPreferences.getInstance();
              await prefs.setBool('sombrasIdentidad', sombrasIdentidad!);
            });
      case 10:
        return CheckboxListTile(
            value: braDuelos,
            title: Text(
              braDuelos ? "Leido" : "Aun no Leido",
              style: const TextStyle(fontSize: 24),
            ),
            onChanged: (braDuelos) async {
              setState(() {
                this.braDuelos = braDuelos!;
              });
              this.setState(() {});
              // Obtain shared preferences.
              final prefs = await SharedPreferences.getInstance();
              await prefs.setBool('braDuelos', braDuelos!);
            });
      case 11:
        return CheckboxListTile(
            value: heroeEras,
            title: Text(
              heroeEras ? "Leido" : "Aun no Leido",
              style: const TextStyle(fontSize: 24),
            ),
            onChanged: (heroeEras) async {
              setState(() {
                this.heroeEras = heroeEras!;
              });
              this.setState(() {});
              // Obtain shared preferences.
              final prefs = await SharedPreferences.getInstance();
              await prefs.setBool('heroeEras', heroeEras!);
            });
      case 12:
        return CheckboxListTile(
            value: historiaSecreta,
            title: Text(
              historiaSecreta ? "Leido" : "Aun no Leido",
              style: const TextStyle(fontSize: 24),
            ),
            onChanged: (historiaSecreta) async {
              setState(() {
                this.historiaSecreta = historiaSecreta!;
              });
              this.setState(() {});
              final prefs = await SharedPreferences.getInstance();
              await prefs.setBool('historiaSecreta', historiaSecreta!);
            });
      case 13:
        return CheckboxListTile(
            value: alientoDioses,
            title: Text(
              alientoDioses ? "Leido" : "Aun no Leido",
              style: const TextStyle(fontSize: 24),
            ),
            onChanged: (alientoDioses) async {
              setState(() {
                this.alientoDioses = alientoDioses!;
              });
              this.setState(() {});
              final prefs = await SharedPreferences.getInstance();
              await prefs.setBool('alientoDioses', alientoDioses!);
            });
      case 14:
        return CheckboxListTile(
            value: caminoReyes,
            title: Text(
              caminoReyes ? "Leido" : "Aun no Leido",
              style: const TextStyle(fontSize: 24),
            ),
            onChanged: (caminoReyes) async {
              setState(() {
                this.caminoReyes = caminoReyes!;
              });
              this.setState(() {});
              final prefs = await SharedPreferences.getInstance();
              await prefs.setBool('caminoReyes', caminoReyes!);
            });
      case 15:
        return CheckboxListTile(
            value: palabrasRadiantes,
            title: Text(
              palabrasRadiantes ? "Leido" : "Aun no Leido",
              style: const TextStyle(fontSize: 24),
            ),
            onChanged: (palabrasRadiantes) async {
              setState(() {
                this.palabrasRadiantes = palabrasRadiantes!;
              });
              this.setState(() {});
              final prefs = await SharedPreferences.getInstance();
              await prefs.setBool('palabrasRadiantes', palabrasRadiantes!);
            });
      case 16:
        return CheckboxListTile(
            value: danzante,
            title: Text(
              danzante ? "Leido" : "Aun no Leido",
              style: const TextStyle(fontSize: 24),
            ),
            onChanged: (danzante) async {
              setState(() {
                this.danzante = danzante!;
              });
              this.setState(() {});
              final prefs = await SharedPreferences.getInstance();
              await prefs.setBool('danzante', danzante!);
            });
      case 17:
        return CheckboxListTile(
            value: juramentada,
            title: Text(
              juramentada ? "Leido" : "Aun no Leido",
              style: const TextStyle(fontSize: 24),
            ),
            onChanged: (juramentada) async {
              setState(() {
                this.juramentada = juramentada!;
              });
              this.setState(() {});
              final prefs = await SharedPreferences.getInstance();
              await prefs.setBool('juramentada', juramentada!);
            });
      case 18:
        return CheckboxListTile(
            value: esquirlas,
            title: Text(
              esquirlas ? "Leido" : "Aun no Leido",
              style: const TextStyle(fontSize: 24),
            ),
            onChanged: (esquirlas) async {
              setState(() {
                this.esquirlas = esquirlas!;
              });
              this.setState(() {});
              final prefs = await SharedPreferences.getInstance();
              await prefs.setBool('esquirlas', esquirlas!);
            });
      case 19:
        return CheckboxListTile(
            value: ritmoGuerra,
            title: Text(
              ritmoGuerra ? "Leido" : "Aun no Leido",
              style: const TextStyle(fontSize: 24),
            ),
            onChanged: (ritmoGuerra) async {
              setState(() {
                this.ritmoGuerra = ritmoGuerra!;
              });
              this.setState(() {});
              final prefs = await SharedPreferences.getInstance();
              await prefs.setBool('ritmoGuerra', ritmoGuerra!);
            });
      case 20:
        return CheckboxListTile(
            value: ocaso,
            title: Text(
              ocaso ? "Leido" : "Aun no Leido",
              style: const TextStyle(fontSize: 24),
            ),
            onChanged: (ocaso) async {
              setState(() {
                this.ocaso = ocaso!;
              });
              this.setState(() {});
              final prefs = await SharedPreferences.getInstance();
              await prefs.setBool('ocaso', ocaso!);
            });
      case 21:
        return CheckboxListTile(
            value: arena,
            title: Text(
              arena ? "Leido" : "Aun no Leido",
              style: const TextStyle(fontSize: 24),
            ),
            onChanged: (arena) async {
              setState(() {
                this.arena = arena!;
              });
              this.setState(() {});
              final prefs = await SharedPreferences.getInstance();
              await prefs.setBool('arena', arena!);
            });
      case 22:
        return CheckboxListTile(
            value: silencio,
            title: Text(
              silencio ? "Leido" : "Aun no Leido",
              style: const TextStyle(fontSize: 24),
            ),
            onChanged: (silencio) async {
              setState(() {
                this.silencio = silencio!;
              });
              this.setState(() {});
              final prefs = await SharedPreferences.getInstance();
              await prefs.setBool('silencio', silencio!);
            });

      default:
        return CheckboxListTile(
            value: elantris,
            title: Text(
              elantris ? "Leido" : "Aun no Leido",
              style: const TextStyle(fontSize: 24),
            ),
            onChanged: (elantris) {
              setState(() {
                this.elantris = elantris!;
              });
              this.setState(() {});
            });
    }
  }
}
