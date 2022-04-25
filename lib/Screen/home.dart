import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool elantris = false, imperioFinal = false;
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
                            elantris);
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
                            elantris);
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
                            elantris);
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
                            elantris);
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
          top: 375,
          right: 60,
          child: AvatarGlow(
            glowColor: Color.fromARGB(255, 243, 166, 78),
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
                            elantris);
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
          top: 483,
          left: 19,
          child: AvatarGlow(
            glowColor: Color.fromARGB(255, 156, 95, 14),
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
                            elantris);
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
                            elantris);
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
          top: 690,
          right: 160,
          child: AvatarGlow(
            glowColor: Color.fromARGB(255, 123, 144, 236),
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
                            elantris);
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
          top: 868,
          right: -12,
          child: AvatarGlow(
            glowColor: Color.fromARGB(255, 59, 211, 127),
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
                            elantris);
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
          top: 905,
          right: 185,
          child: AvatarGlow(
            glowColor: Color.fromARGB(255, 59, 211, 127),
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
                            elantris);
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
          top: 983,
          left: 1,
          child: AvatarGlow(
            glowColor: Color.fromARGB(255, 151, 103, 12),
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
                            elantris);
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
                            elantris);
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
        //Segundo fondo---------------------------------------------------------
        Positioned(
          bottom: 1000,
          left: 45,
          child: AvatarGlow(
            glowColor: Color.fromARGB(255, 42, 228, 228),
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
                            elantris);
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
          bottom: 860,
          right: 35,
          child: AvatarGlow(
            glowColor: Color.fromARGB(255, 233, 182, 14),
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
                            elantris);
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
          bottom: 750,
          left: 30,
          child: AvatarGlow(
            glowColor: Color.fromARGB(255, 207, 188, 18),
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
                            elantris);
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
                            elantris);
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
          bottom: 567,
          left: 35,
          child: AvatarGlow(
            glowColor: Color.fromARGB(255, 155, 121, 12),
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
                            "jugamentada.jpg",
                            "linkEbay",
                            elantris);
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
          bottom: 565,
          right: 41,
          child: AvatarGlow(
            glowColor: Color.fromARGB(255, 18, 82, 219),
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
                            elantris);
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
          bottom: 405,
          right: 153,
          child: AvatarGlow(
            glowColor: Color.fromARGB(255, 48, 107, 235),
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
                            elantris);
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
                            elantris);
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
                            elantris);
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
                            elantris);
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
      ],
    )));
  }

  StatefulBuilder metodo(BuildContext context, String titulo, String des,
      String img, String ebay, bool b) {
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
                  CheckboxListTile(
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
                      }),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(
                        onPressed: () {
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
              left: 20,
              right: 20,
              child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 45,
                  child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(45)),
                      child: Image.asset("assets/images/$img")) //va imagen,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
