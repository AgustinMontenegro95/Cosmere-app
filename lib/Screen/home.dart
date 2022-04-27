// ignore_for_file: deprecated_member_use

import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // this variable determnines whether the back-to-top button is shown or not
  bool _showBackToTopButton = false;
  // scroll controller
  late ScrollController _scrollController;
  bool idioma = false;
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

  late TutorialCoachMark tutorialCoachMark;
  List<TargetFocus> targets = [];

  GlobalKey key = GlobalKey();
  final GlobalKey _key1 = GlobalKey();
  final GlobalKey _key2 = GlobalKey();
  final GlobalKey _key3 = GlobalKey();

  void obtenerLibros() async {
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
    obtenerLibros();
    initIdioma();
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          if (_scrollController.offset >= 400) {
            _showBackToTopButton = true; // show the back-to-top button
          } else {
            _showBackToTopButton = false; // hide the back-to-top button
          }
        });
      });
    initTargets();
    tutorial();
    super.initState();
  }

  void initIdioma() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getBool('idioma') == null) {
      idioma = false;
    } else {
      setState(() {
        idioma = prefs.getBool('idioma')!;
      });
    }
  }

  void tutorial() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    if (prefs.getBool('tutorial') == null) {
      WidgetsBinding.instance!.addPostFrameCallback(_layout);
    }
  }

  void _layout(_) {
    Future.delayed(const Duration(milliseconds: 100));
    showTutorial();
  }

  void showTutorial() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    tutorialCoachMark = TutorialCoachMark(
      context,
      targets: targets,
      colorShadow: Colors.black,
      textSkip: "SKIP",
      paddingFocus: 10,
      opacityShadow: 0.8,
      onFinish: () {
        prefs.setBool('tutorial', true);
        print("finish");
      },
      onClickTarget: (target) {
        print('onClickTarget: $target');
      },
      onSkip: () {
        prefs.setBool('tutorial', true);
        print("skip");
      },
      onClickOverlay: (target) {
        print('onClickOverlay: $target');
      },
    )..show();
  }

  void initTargets() {
    targets.add(
      TargetFocus(
        identify: "Target 0",
        keyTarget: _key1,
        enableOverlayTab: true,
        contents: [
          TargetContent(
              align: ContentAlign.bottom,
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      "ALMACENA TU PROGRESO",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20.0),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Text(
                        "Accede a la descripción de cada libro, marca los completados y guarda tu progreso.",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: SizedBox(
                          width: 50,
                          child: Image(
                              image: AssetImage('assets/images/guardado.png'))),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
    targets.add(
      TargetFocus(
        identify: "Target 1",
        keyTarget: _key2,
        //color: Colors.red,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text(
                    "LÍNEA TEMPORAL DEL COSMERE",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20.0),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      "Sigue las líneas para una lectura de acuerdo al orden recomendado. Sin embargo, se puede comenzar por 'El imperio final' o 'El aliento de los dioses'.",
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
        shape: ShapeLightFocus.RRect,
        enableOverlayTab: true,
        radius: 5,
      ),
    );
    targets.add(TargetFocus(
      identify: "Target 2",
      keyTarget: _key3,
      enableOverlayTab: true,
      contents: [
        TargetContent(
            align: ContentAlign.top,
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: SizedBox(
                        width: 150,
                        child: Image(
                            image: AssetImage('assets/images/Arcanum.png'))),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20.0),
                    child: Text(
                      "ARCANUM ILIMITADO",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ),
                  Text(
                    "«Arcanum Ilimitado» es una antología de relatos que recopila las historias relacionadas con el Cosmere que Brandon Sanderson ha publicado a lo largo de los años.\nAunque algunos son relatos independientes que se pueden disfrutar por separado, otras requieren haber leído previamente algunas novelas del Cosmere. Leelos siguiendo las líneas blancas.",
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ))
      ],
      shape: ShapeLightFocus.Circle,
    ));
  }

  @override
  void dispose() {
    _scrollController.dispose(); // dispose the controller
    super.dispose();
  }

  // This function is triggered when the user presses the back-to-top button
  void _scrollToTop() {
    _scrollController.animateTo(0,
        duration: const Duration(seconds: 1), curve: Curves.linear);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 0, 18, 36),
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Image(image: AssetImage('assets/images/drawer.png')),
            ),
            !idioma
                ? Image(image: AssetImage('assets/images/info_esp.png'))
                : Image(image: AssetImage('assets/images/info_ing.png')),
            Padding(
              padding: const EdgeInsets.all(100),
              child: SizedBox(
                height: 60,
                width: 60,
                child: GestureDetector(
                  onTap: () async {
                    SharedPreferences prefs =
                        await SharedPreferences.getInstance();
                    setState(() {
                      idioma = !idioma;
                      prefs.setBool('idioma', idioma);
                    });
                  },
                  child: idioma
                      ? Image(image: AssetImage('assets/images/argentina.png'))
                      : Image(image: AssetImage('assets/images/eeuu.png')),
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
          controller: _scrollController,
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
              // fechas amarillas
              Positioned(
                  key: _key2,
                  top: 247,
                  left: 257,
                  child: const SizedBox(width: 20, height: 20)),
              Positioned(
                  key: _key3,
                  top: 445,
                  left: 195,
                  child: const SizedBox(
                    width: 20,
                    height: 20,
                  )),
              Positioned(
                key: _key1,
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
                              if (idioma) {
                                return metodo(
                                    context,
                                    "Elantris",
                                    "Elantris is, along with Warbreaker and The Final Empire, one of the three recommended books for getting started in the Cosmere.",
                                    "elantris.png",
                                    1);
                              } else {
                                return metodo(
                                    context,
                                    "Elantris",
                                    "Elantris es, junto a El Aliento de los Dioses y El Imperio Final, uno de los tres libros recomendados para iniciarse en el Cosmere.",
                                    "elantris.png",
                                    1);
                              }
                            });
                      },
                      child: CircleAvatar(
                        child: elantris
                            ? const Icon(Icons.check, color: Colors.white)
                            : null,
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
                              if (idioma) {
                                return metodo(
                                    context,
                                    "The Emperor's Soul",
                                    "The Emperor's Soul is a story set on the planet where Elantris takes place, but on another continent and can be read separately. It is collected in Arcanum Unbounded.",
                                    "Arcanum.png",
                                    2);
                              } else {
                                return metodo(
                                    context,
                                    "El Alma del Emperador",
                                    "El Alma del Emperador es un relato ambientado en el planeta donde sucede Elantris, pero en otro continente y se puede leer por separado. Se encuentra recogido en Arcanum Ilimitado.",
                                    "Arcanum.png",
                                    2);
                              }
                            });
                      },
                      child: CircleAvatar(
                        child: almaEmperador
                            ? const Icon(Icons.check, color: Colors.white)
                            : null,
                        backgroundColor: almaEmperador
                            ? Colors.green[300]
                            : Colors.grey[100],
                        radius: 15.0,
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
                              if (idioma) {
                                return metodo(
                                    context,
                                    "The Hope of Elantris",
                                    "The Hope of Elantris is a story that narrates an alternate viewpoint of an event from the original novel. It is collected in  Arcanum Unbounded.",
                                    "Arcanum.png",
                                    3);
                              } else {
                                return metodo(
                                    context,
                                    "La Esperanza de Elantris ",
                                    "La Esperanza de Elantris es un relato que narra un punto de vista alternativo de un suceso de la novela original. Se encuentra recogido en Arcanum Ilimitado.",
                                    "Arcanum.png",
                                    3);
                              }
                            });
                      },
                      child: CircleAvatar(
                        child: esperanzaElantris
                            ? const Icon(Icons.check, color: Colors.white)
                            : null,
                        backgroundColor: esperanzaElantris
                            ? Colors.green[300]
                            : Colors.grey[100],
                        radius: 15.0,
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
                              if (idioma) {
                                return metodo(
                                    context,
                                    "The Eleventh Metal",
                                    "The Eleventh Metal is a short story that comes as a prequel to the events explained in The Final Empire, and is worth reading after finishing that novel. It is collected in Arcanum Unbounded.",
                                    "Arcanum.png",
                                    4);
                              } else {
                                return metodo(
                                    context,
                                    "El Undécimo metal",
                                    "El Undécimo Metal es un relato corto que viene a ser una precuela de los acontecimientos que se explican en El Imperio Final, y vale la pena leerlo al acabar dicha novela. Se encuentra recogido en Arcanum Ilimitado.",
                                    "Arcanum.png",
                                    4);
                              }
                            });
                      },
                      child: CircleAvatar(
                        child: undecimoMetal
                            ? const Icon(Icons.check, color: Colors.white)
                            : null,
                        backgroundColor: undecimoMetal
                            ? Colors.green[300]
                            : Colors.grey[100],
                        radius: 15.0,
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
                              if (idioma) {
                                return metodo(
                                    context,
                                    "The Final Empire",
                                    "If you like sagas, The Final Empire, the novel with which Mistborn begins, is another recommended entry point to the Cosmere along with Elantris and Warbreaker.",
                                    "imperio_final.png",
                                    5);
                              } else {
                                return metodo(
                                    context,
                                    "El Imperio Final",
                                    "Si te gustan las sagas, El Imperio Final, novela con la que se inicia Nacidos de la Bruma, es otro de los puntos recomendados de entrada al Cosmere junto a Elantris y El Aliento de los Dioses.",
                                    "imperio_final.png",
                                    5);
                              }
                            });
                      },
                      child: CircleAvatar(
                        child: imperioFinal
                            ? const Icon(Icons.check, color: Colors.white)
                            : null,
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
                              if (idioma) {
                                return metodo(
                                    context,
                                    "The well of Ascension",
                                    "The Well of Ascension is the second installment of Mistborn Age 1.",
                                    "pozo_asencion.png",
                                    6);
                              } else {
                                return metodo(
                                    context,
                                    "El Pozo de la Asencion",
                                    "El Pozo de la Ascensión es la segunda entrega de Nacidos de la Bruma Era 1",
                                    "pozo_asencion.png",
                                    6);
                              }
                            });
                      },
                      child: CircleAvatar(
                        child: pozoAsencion
                            ? const Icon(Icons.check, color: Colors.white)
                            : null,
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
                              if (idioma) {
                                return metodo(
                                    context,
                                    "Allomancer Jak",
                                    "Alomante Jak is a short story about a fictional character whose adventures are published in Elden's Diary, first appearing in Alloy of Law. It is collected in Arcanum Unbounded.",
                                    "Arcanum.png",
                                    7);
                              } else {
                                return metodo(
                                    context,
                                    "Alomante Jak",
                                    "Alomante Jak es un relato corto sobre un personaje ficticio cuyas aventuras se publican en el Diario de Elendel, y que aparece por primera vez en Aleación de Ley. Se encuentra recogido en Arcanum Ilimitado.",
                                    "Arcanum.png",
                                    7);
                              }
                            });
                      },
                      child: CircleAvatar(
                        child: alomante
                            ? const Icon(Icons.check, color: Colors.white)
                            : null,
                        backgroundColor:
                            alomante ? Colors.green[300] : Colors.grey[100],
                        radius: 15.0,
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
                              if (idioma) {
                                return metodo(
                                    context,
                                    "The alloy of Law",
                                    "Alloy of Law is the first installment of the second Age of Mistborn, and takes place three hundred years after Hero of Ages.",
                                    "aleacion_ley.jpg",
                                    8);
                              } else {
                                return metodo(
                                    context,
                                    "Aleación de Ley",
                                    "Aleación de Ley es la primera entrega de la segunda Era de Nacidos de la Bruma, y tiene lugar trescientos años después del Héroe de las Eras.",
                                    "aleacion_ley.jpg",
                                    8);
                              }
                            });
                      },
                      child: CircleAvatar(
                        child: aley
                            ? const Icon(Icons.check, color: Colors.white)
                            : null,
                        backgroundColor:
                            aley ? Colors.green[300] : Colors.grey[100],
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
                              if (idioma) {
                                return metodo(
                                    context,
                                    "Shadows of Self",
                                    "Shadows of Identity is the second installment of Mistborn Age 2.",
                                    "sombras_identidad.jpg",
                                    9);
                              } else {
                                return metodo(
                                    context,
                                    "Sombras de Identidad",
                                    "Sombras de Identidad es la segunda entrega de Nacidos de la Bruma Era 2",
                                    "sombras_identidad.jpg",
                                    9);
                              }
                            });
                      },
                      child: CircleAvatar(
                        child: sombrasIdentidad
                            ? const Icon(Icons.check, color: Colors.white)
                            : null,
                        backgroundColor: sombrasIdentidad
                            ? Colors.green[300]
                            : Colors.grey[100],
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
                              if (idioma) {
                                return metodo(
                                    context,
                                    "The bands of Mourning",
                                    "Dueling Arms is the third installment of Mistborn Age 2. The book that closes the saga, The Lost Metal, will be published in English in Christmas 2022.",
                                    "brazaletes_duelo.png",
                                    10);
                              } else {
                                return metodo(
                                    context,
                                    "Brazales de Duelo",
                                    "Brazales de Duelo es la tercera entrega de Nacidos de la Bruma Era 2. El libro que cierra la saga, El Metal Perdido, se publicará en inglés en navidades de 2022.",
                                    "brazaletes_duelo.png",
                                    10);
                              }
                            });
                      },
                      child: CircleAvatar(
                        child: braDuelos
                            ? const Icon(Icons.check, color: Colors.white)
                            : null,
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
                              if (idioma) {
                                return metodo(
                                    context,
                                    "The Hero of ages",
                                    "The Hero of the Ages closes the first trilogy of Mistborn Age 1.",
                                    "heroe_de_eras.jpg",
                                    11);
                              } else {
                                return metodo(
                                    context,
                                    "El Heroe de las Eras",
                                    "El Héroe de las Eras cierra la primera trilogía de Nacidos de la Bruma Era 1.",
                                    "heroe_de_eras.jpg",
                                    11);
                              }
                            });
                      },
                      child: CircleAvatar(
                        child: heroeEras
                            ? const Icon(Icons.check, color: Colors.white)
                            : null,
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
                              if (idioma) {
                                return metodo(
                                    context,
                                    "Secret history",
                                    "Secret History is a short story that temporally takes place after The Hero of the Ages, but whose reading is more impactful after The Bands of Mourning. It is collected in Arcanum Unbounded.",
                                    "Arcanum.png",
                                    12);
                              } else {
                                return metodo(
                                    context,
                                    "Historia secreta",
                                    "Historia Secreta es un relato corto que temporalmente ocurre tras El Héroe de las Eras, pero cuya lectura es más impactante tras Brazales de Duelo. Se encuentra recogido en Arcanum Ilimitado. ",
                                    "Arcanum.png",
                                    12);
                              }
                            });
                      },
                      child: CircleAvatar(
                        child: historiaSecreta
                            ? const Icon(Icons.check, color: Colors.white)
                            : null,
                        backgroundColor: historiaSecreta
                            ? Colors.green[300]
                            : Colors.grey[100],
                        radius: 15.0,
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
                              if (idioma) {
                                return metodo(
                                    context,
                                    "Warbreaker",
                                    "It is one of the three recommended entry points to Cosmere. It is a self-conclusive novel, whose reading is highly recommended before delving into Stormlight Archive.",
                                    "warbreaker.jpg",
                                    13);
                              } else {
                                return metodo(
                                    context,
                                    "El Aliento de los Dioses",
                                    "El Aliento de los Dioses es uno de los tres puntos de entrada recomendados al Cosmere. Se trata de una novela autoconclusiva, cuya lectura es muy recomendable antes de adentrarse en El Archivo de las Tormentas.",
                                    "warbreaker.jpg",
                                    13);
                              }
                            });
                      },
                      child: CircleAvatar(
                        child: alientoDioses
                            ? const Icon(Icons.check, color: Colors.white)
                            : null,
                        backgroundColor: alientoDioses
                            ? Colors.green[300]
                            : Colors.grey[100],
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
                              if (idioma) {
                                return metodo(
                                    context,
                                    "The way of kings",
                                    "The Way of Kings is the novel that begins Stormlight archive, the magnum opus of Brandon Sanderson and the point where to this day converges all the Cosmere, so it is not a good work to get into this universe. For this we recommend: Elantris, Warbreaker or The Final Empire.",
                                    "camino_reyes.jpg",
                                    14);
                              } else {
                                return metodo(
                                    context,
                                    "El Camino de los Reyes",
                                    "El Camino de los Reyes es la novela que inicia El Archivo de las Tormentas, la obra magna de Brandon Sanderson y el punto donde a día de hoy converge todo el Cosmere, por lo que no es una buena obra para adentrarse en este universo. Para ello recomendamos: Elantris, El Aliento de los Dioses o El Imperio Final.",
                                    "camino_reyes.jpg",
                                    14);
                              }
                            });
                      },
                      child: CircleAvatar(
                        child: caminoReyes
                            ? const Icon(Icons.check, color: Colors.white)
                            : null,
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
                              if (idioma) {
                                return metodo(
                                    context,
                                    "Words of radiance",
                                    "Is the second installment of the stormlight archive.",
                                    "palabras_radiantes.jpg",
                                    15);
                              } else {
                                return metodo(
                                    context,
                                    "Palabras Radiantes",
                                    "Palabras Radiantes es la segunda entrega del Archivo de las Tormentas.",
                                    "palabras_radiantes.jpg",
                                    15);
                              }
                            });
                      },
                      child: CircleAvatar(
                        child: palabrasRadiantes
                            ? const Icon(Icons.check, color: Colors.white)
                            : null,
                        backgroundColor: palabrasRadiantes
                            ? Colors.green[300]
                            : Colors.grey[100],
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
                              if (idioma) {
                                return metodo(
                                    context,
                                    "Edgedancer",
                                    "Edgedancer is a short story that happens between Words of radiance and Oathbringer, which is worth reading between both novels. It is collected in Arcanum Unbounded.",
                                    "Arcanum.png",
                                    16);
                              } else {
                                return metodo(
                                    context,
                                    "Danzante del Filo",
                                    "Danzante del Filo es un relato corto que sucede entre Palabras Radiantes y Juramentada, que vale la pena leer entre ambas novelas. Se encuentra recogido en Arcanum Ilimitado. ",
                                    "Arcanum.png",
                                    16);
                              }
                            });
                      },
                      child: CircleAvatar(
                        child: danzante
                            ? const Icon(Icons.check, color: Colors.white)
                            : null,
                        backgroundColor:
                            danzante ? Colors.green[300] : Colors.grey[100],
                        radius: 15.0,
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
                              if (idioma) {
                                return metodo(
                                    context,
                                    "Oathbringer",
                                    "Oathbringer is the third installment of the stormlight archive.",
                                    "juramentada.jpg",
                                    17);
                              } else {
                                return metodo(
                                    context,
                                    "Juramentada",
                                    "Juramentada es la tercera entrega del Archivo de las Tormentas.",
                                    "juramentada.jpg",
                                    17);
                              }
                            });
                      },
                      child: CircleAvatar(
                        child: juramentada
                            ? const Icon(Icons.check, color: Colors.white)
                            : null,
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
                              if (idioma) {
                                return metodo(
                                    context,
                                    "Dawnshard",
                                    "Is a short story that takes place between Oathbringer and The Rhythm of War and is enlightening from a Cosmerian point of view.",
                                    "esquirlas_amanecer.jpg",
                                    18);
                              } else {
                                return metodo(
                                    context,
                                    "Esquirla del Amanecer",
                                    "Esquirla del Amanecer es un relato corto que tiene lugar entre Juramentada y El Ritmo de la Guerra y que resulta esclarecedor desde un punto de vista cosmeriano.",
                                    "esquirlas_amanecer.jpg",
                                    18);
                              }
                            });
                      },
                      child: CircleAvatar(
                        child: esquirlas
                            ? const Icon(Icons.check, color: Colors.white)
                            : null,
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
                              if (idioma) {
                                return metodo(
                                    context,
                                    "The rhythm of war",
                                    "The Rhythm of War is the fourth installment of the Storm Archive. We recommend having read everything along the way from Elantris to here before reading this book.",
                                    "ritmo_de_guerra.jpg",
                                    19);
                              } else {
                                return metodo(
                                    context,
                                    "El Ritmo de la Guerra",
                                    "El Ritmo de la Guerra es la cuarta entrega del Archivo de las Tormentas. Recomendamos haber leído todo lo que aparece en el camino desde Elantris hasta aquí antes de leer este libro.",
                                    "ritmo_de_guerra.jpg",
                                    19);
                              }
                            });
                      },
                      child: CircleAvatar(
                        child: ritmoGuerra
                            ? const Icon(Icons.check, color: Colors.white)
                            : null,
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
                              if (idioma) {
                                return metodo(
                                    context,
                                    "Sixth of the dusk",
                                    "Sixth of Dusk is a short story that can be read as a stand-alone to any Cosmere novel. Brandon is writing a very, very promising sequel although publication is still years away. It is collected in Arcanum Unbounded.",
                                    "Arcanum.png",
                                    20);
                              } else {
                                return metodo(
                                    context,
                                    "Sexto del Ocaso",
                                    "Sexto del Ocaso es un relato corto que puede leerse de forma independiente a cualquier novela del Cosmere. Brandon está escribiendo una continuación muy, pero que muy prometedora aunque aún faltan años para su publicación. Se encuentra recogido en Arcanum Ilimitado.",
                                    "Arcanum.png",
                                    20);
                              }
                            });
                      },
                      child: CircleAvatar(
                        child: ocaso
                            ? const Icon(Icons.check, color: Colors.white)
                            : null,
                        backgroundColor:
                            ocaso ? Colors.green[300] : Colors.grey[100],
                        radius: 15.0,
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
                              if (idioma) {
                                return metodo(
                                    context,
                                    "White sand",
                                    "White sand is a saga of three graphic novels that is awaiting re-release with additional material in English (and translated into Spanish) between 2022 and 2023. It can be read individually. Arcanum Unbounded contains a few sample pages.",
                                    "arena_blanca.jpg",
                                    21);
                              } else {
                                return metodo(
                                    context,
                                    "Arena Blanca",
                                    "Arena Blanca es una saga de tres novelas gráficas que está a la espera de ser reeditada con material adicional en inglés (y traducido al castellano) entre 2022 y 2023. Se puede leer de forma individual. Arcanum Ilimitado contiene unas páginas de muestra.",
                                    "arena_blanca.jpg",
                                    21);
                              }
                            });
                      },
                      child: CircleAvatar(
                        child: arena
                            ? const Icon(Icons.check, color: Colors.white)
                            : null,
                        backgroundColor:
                            arena ? Colors.green[300] : Colors.grey[100],
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
                              if (idioma) {
                                return metodo(
                                    context,
                                    "Shadows for Silence in the Forests of Hell",
                                    "Next to Sixth of Dusk, one of the most original and intriguing short stories Brandon has written in the Cosmere. It is collected in Arcanum Unbounded and can be read as a stand-alone to any novel in this literary universe.",
                                    "Arcanum.png",
                                    22);
                              } else {
                                return metodo(
                                    context,
                                    "Sombras por Silencio en los bosques del infierno",
                                    "Junto a Sexto del Ocaso, uno de los relatos cortos más originales e intrigantes que ha escrito Brandon en el Cosmere. Se encuentra recogido en Arcanum Ilimitado y se puede leer de forma independiente a cualquier novela de este universo literario.",
                                    "Arcanum.png",
                                    22);
                              }
                            });
                      },
                      child: CircleAvatar(
                        child: silencio
                            ? const Icon(Icons.check, color: Colors.white)
                            : null,
                        backgroundColor:
                            silencio ? Colors.green[300] : Colors.grey[100],
                        radius: 15.0,
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
                    idioma
                        ? const Text(
                            "Powered by: ",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )
                        : const Text(
                            "Impulsado por: ",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                    SizedBox(
                      width: 70,
                      height: 70,
                      child: GestureDetector(
                        onTap: () async {
                          const url = "https://soludevs.web.app/";
                          if (await canLaunch(url))
                            await launch(url);
                          else
                            // can't launch url, there is some error
                            throw "Could not launch $url";
                        },
                        child: const Image(
                            image: AssetImage(
                                'assets/images/soludev_logo_mono.png')),
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
      floatingActionButton: _showBackToTopButton == false
          ? null
          : FloatingActionButton(
              backgroundColor: Colors.blueGrey[800],
              onPressed: _scrollToTop,
              child: const Icon(Icons.arrow_upward),
            ),
    );
  }

  StatefulBuilder metodo(
      BuildContext context, String titulo, String des, String img, int b) {
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
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                  // ignore: prefer_const_literals_to_create_immutables
                  boxShadow: [
                    const BoxShadow(
                        color: Color.fromARGB(255, 133, 125, 125),
                        offset: Offset(0, 10),
                        blurRadius: 10),
                  ]),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const SizedBox(height: 50),
                  FittedBox(
                    fit: BoxFit.cover,
                    child: Text(
                      titulo.toString(),
                      style: GoogleFonts.trispace(
                        textStyle: const TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                            letterSpacing: .5),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(des.toString(),
                        style: GoogleFonts.trispace(
                          textStyle: const TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              letterSpacing: .5),
                        ),
                        textAlign: TextAlign.justify),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Theme(
                      data: ThemeData(unselectedWidgetColor: Colors.white),
                      child: libro(setState, b)),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: IconButton(
                          color: Colors.white,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_forward_ios))),
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

  CheckboxListTile libro(StateSetter setState, int b) {
    switch (b) {
      case 1:
        return CheckboxListTile(
            checkColor: Colors.black,
            activeColor: Colors.white,
            value: elantris,
            title: idioma
                ? Text(
                    elantris ? "Completed" : "Pending",
                    style: const TextStyle(fontSize: 24, color: Colors.white),
                  )
                : Text(
                    elantris ? "Completado" : "Pendiente",
                    style: const TextStyle(fontSize: 24, color: Colors.white),
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
            checkColor: Colors.black,
            activeColor: Colors.white,
            value: almaEmperador,
            title: idioma
                ? Text(
                    almaEmperador ? "Completed" : "Pending",
                    style: const TextStyle(fontSize: 24, color: Colors.white),
                  )
                : Text(
                    almaEmperador ? "Completado" : "Pendiente",
                    style: const TextStyle(fontSize: 24, color: Colors.white),
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
            checkColor: Colors.black,
            activeColor: Colors.white,
            value: esperanzaElantris,
            title: idioma
                ? Text(
                    esperanzaElantris ? "Completed" : "Pending",
                    style: const TextStyle(fontSize: 24, color: Colors.white),
                  )
                : Text(
                    esperanzaElantris ? "Completado" : "Pendiente",
                    style: const TextStyle(fontSize: 24, color: Colors.white),
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
            checkColor: Colors.black,
            activeColor: Colors.white,
            value: undecimoMetal,
            title: idioma
                ? Text(
                    undecimoMetal ? "Completed" : "Pending",
                    style: const TextStyle(fontSize: 24, color: Colors.white),
                  )
                : Text(
                    undecimoMetal ? "Completado" : "Pendiente",
                    style: const TextStyle(fontSize: 24, color: Colors.white),
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
            checkColor: Colors.black,
            activeColor: Colors.white,
            value: imperioFinal,
            title: idioma
                ? Text(
                    imperioFinal ? "Completed" : "Pending",
                    style: const TextStyle(fontSize: 24, color: Colors.white),
                  )
                : Text(
                    imperioFinal ? "Completado" : "Pendiente",
                    style: const TextStyle(fontSize: 24, color: Colors.white),
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
            checkColor: Colors.black,
            activeColor: Colors.white,
            value: pozoAsencion,
            title: idioma
                ? Text(
                    pozoAsencion ? "Completed" : "Pending",
                    style: const TextStyle(fontSize: 24, color: Colors.white),
                  )
                : Text(
                    pozoAsencion ? "Completado" : "Pendiente",
                    style: const TextStyle(fontSize: 24, color: Colors.white),
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
            checkColor: Colors.black,
            activeColor: Colors.white,
            value: alomante,
            title: idioma
                ? Text(
                    alomante ? "Completed" : "Pending",
                    style: const TextStyle(fontSize: 24, color: Colors.white),
                  )
                : Text(
                    alomante ? "Completado" : "Pendiente",
                    style: const TextStyle(fontSize: 24, color: Colors.white),
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
            checkColor: Colors.black,
            activeColor: Colors.white,
            value: aley,
            title: idioma
                ? Text(
                    aley ? "Completed" : "Pending",
                    style: const TextStyle(fontSize: 24, color: Colors.white),
                  )
                : Text(
                    aley ? "Completado" : "Pendiente",
                    style: const TextStyle(fontSize: 24, color: Colors.white),
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
            checkColor: Colors.black,
            activeColor: Colors.white,
            value: sombrasIdentidad,
            title: idioma
                ? Text(
                    sombrasIdentidad ? "Completed" : "Pending",
                    style: const TextStyle(fontSize: 24, color: Colors.white),
                  )
                : Text(
                    sombrasIdentidad ? "Completado" : "Pendiente",
                    style: const TextStyle(fontSize: 24, color: Colors.white),
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
            checkColor: Colors.black,
            activeColor: Colors.white,
            value: braDuelos,
            title: idioma
                ? Text(
                    braDuelos ? "Completed" : "Pending",
                    style: const TextStyle(fontSize: 24, color: Colors.white),
                  )
                : Text(
                    braDuelos ? "Completado" : "Pendiente",
                    style: const TextStyle(fontSize: 24, color: Colors.white),
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
            checkColor: Colors.black,
            activeColor: Colors.white,
            value: heroeEras,
            title: idioma
                ? Text(
                    heroeEras ? "Completed" : "Pending",
                    style: const TextStyle(fontSize: 24, color: Colors.white),
                  )
                : Text(
                    heroeEras ? "Completado" : "Pendiente",
                    style: const TextStyle(fontSize: 24, color: Colors.white),
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
            checkColor: Colors.black,
            activeColor: Colors.white,
            value: historiaSecreta,
            title: idioma
                ? Text(
                    historiaSecreta ? "Completed" : "Pending",
                    style: const TextStyle(fontSize: 24, color: Colors.white),
                  )
                : Text(
                    historiaSecreta ? "Completado" : "Pendiente",
                    style: const TextStyle(fontSize: 24, color: Colors.white),
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
            checkColor: Colors.black,
            activeColor: Colors.white,
            value: alientoDioses,
            title: idioma
                ? Text(
                    alientoDioses ? "Completed" : "Pending",
                    style: const TextStyle(fontSize: 24, color: Colors.white),
                  )
                : Text(
                    alientoDioses ? "Completado" : "Pendiente",
                    style: const TextStyle(fontSize: 24, color: Colors.white),
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
            checkColor: Colors.black,
            activeColor: Colors.white,
            value: caminoReyes,
            title: idioma
                ? Text(
                    caminoReyes ? "Completed" : "Pending",
                    style: const TextStyle(fontSize: 24, color: Colors.white),
                  )
                : Text(
                    caminoReyes ? "Completado" : "Pendiente",
                    style: const TextStyle(fontSize: 24, color: Colors.white),
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
            checkColor: Colors.black,
            activeColor: Colors.white,
            value: palabrasRadiantes,
            title: idioma
                ? Text(
                    palabrasRadiantes ? "Completed" : "Pending",
                    style: const TextStyle(fontSize: 24, color: Colors.white),
                  )
                : Text(
                    palabrasRadiantes ? "Completado" : "Pendiente",
                    style: const TextStyle(fontSize: 24, color: Colors.white),
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
            checkColor: Colors.black,
            activeColor: Colors.white,
            value: danzante,
            title: idioma
                ? Text(
                    danzante ? "Completed" : "Pending",
                    style: const TextStyle(fontSize: 24, color: Colors.white),
                  )
                : Text(
                    danzante ? "Completado" : "Pendiente",
                    style: const TextStyle(fontSize: 24, color: Colors.white),
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
            checkColor: Colors.black,
            activeColor: Colors.white,
            value: juramentada,
            title: idioma
                ? Text(
                    juramentada ? "Completed" : "Pending",
                    style: const TextStyle(fontSize: 24, color: Colors.white),
                  )
                : Text(
                    juramentada ? "Completado" : "Pendiente",
                    style: const TextStyle(fontSize: 24, color: Colors.white),
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
            checkColor: Colors.black,
            activeColor: Colors.white,
            value: esquirlas,
            title: idioma
                ? Text(
                    esquirlas ? "Completed" : "Pending",
                    style: const TextStyle(fontSize: 24, color: Colors.white),
                  )
                : Text(
                    esquirlas ? "Completado" : "Pendiente",
                    style: const TextStyle(fontSize: 24, color: Colors.white),
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
            checkColor: Colors.black,
            activeColor: Colors.white,
            value: ritmoGuerra,
            title: idioma
                ? Text(
                    ritmoGuerra ? "Completed" : "Pending",
                    style: const TextStyle(fontSize: 24, color: Colors.white),
                  )
                : Text(
                    ritmoGuerra ? "Completado" : "Pendiente",
                    style: const TextStyle(fontSize: 24, color: Colors.white),
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
            checkColor: Colors.black,
            activeColor: Colors.white,
            value: ocaso,
            title: idioma
                ? Text(
                    ocaso ? "Completed" : "Pending",
                    style: const TextStyle(fontSize: 24, color: Colors.white),
                  )
                : Text(
                    ocaso ? "Completado" : "Pendiente",
                    style: const TextStyle(fontSize: 24, color: Colors.white),
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
            checkColor: Colors.black,
            activeColor: Colors.white,
            value: arena,
            title: idioma
                ? Text(
                    arena ? "Completed" : "Pending",
                    style: const TextStyle(fontSize: 24, color: Colors.white),
                  )
                : Text(
                    arena ? "Completado" : "Pendiente",
                    style: const TextStyle(fontSize: 24, color: Colors.white),
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
            checkColor: Colors.black,
            activeColor: Colors.white,
            value: silencio,
            title: idioma
                ? Text(
                    silencio ? "Completed" : "Pending",
                    style: const TextStyle(fontSize: 24, color: Colors.white),
                  )
                : Text(
                    silencio ? "Completado" : "Pendiente",
                    style: const TextStyle(fontSize: 24, color: Colors.white),
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
            checkColor: Colors.black,
            activeColor: Colors.white,
            value: elantris,
            title: idioma
                ? Text(
                    elantris ? "Completed" : "Pending",
                    style: const TextStyle(fontSize: 24, color: Colors.white),
                  )
                : Text(
                    elantris ? "Completado" : "Pendiente",
                    style: const TextStyle(fontSize: 24, color: Colors.white),
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
