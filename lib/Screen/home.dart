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
        const Image(
          image: AssetImage('assets/images/imagen_fondo.png'),
          fit: BoxFit.contain,
        ),
        Positioned(
          top: 15,
          left: 170,
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
                        return metodo(context, "Elantris", "meta bola",
                            "imagen", "linkEbay", elantris);
                      });
                },
                child: CircleAvatar(
                  backgroundColor: elantris ? Colors.green : Colors.grey[100],
                  radius: 20.0,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 136,
          left: -10,
          child: AvatarGlow(
            endRadius: 60.0,
            child: Material(
              // Replace this child with your own
              elevation: 8.0,
              shape: const CircleBorder(),
              child: GestureDetector(
                onTap: () {
                  print("holaaa");
                },
                child: CircleAvatar(
                  backgroundColor: Colors.grey[100],
                  radius: 15.0,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 150,
          child: AvatarGlow(
            endRadius: 60.0,
            child: Material(
              // Replace this child with your own
              elevation: 8.0,
              shape: const CircleBorder(),
              child: GestureDetector(
                onTap: () {},
                child: CircleAvatar(
                  backgroundColor: Colors.grey[100],
                  radius: 15.0,
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
                      child: Image.asset(
                          "assets/images/maxresdefault.jpg")) //va imagen,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
