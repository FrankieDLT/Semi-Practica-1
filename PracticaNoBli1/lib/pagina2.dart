import 'dart:math';

import 'package:flutter/material.dart';

//void main() => runApp(pagina2());

// ignore: camel_case_types
class Pagina2 extends StatefulWidget {
  final String data;
   Pagina2({Key key, @required this.data}) : super(key: key);

  @override
  _Pagina2State createState() => _Pagina2State(pag: data);
}

class _Pagina2State extends State<Pagina2> {
  final String pag;
  int _rannum = 0;
  Random rengenerator = new Random();
  _Pagina2State({@required this.pag});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina 2"),
        backgroundColor: Colors.black54,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.2, 0.45,0.7],
                colors: [Colors.cyan[300],Colors.purple[300],Colors.green[200]])),
        child: Center(
            child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              child: Text(
                "Genere un número Random",
                style: TextStyle(
                    color: Colors.purple,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "$_rannum",
              style: TextStyle(
                  color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      _rannum = rengenerator.nextInt(1000) +
                          1; // Número al azar de [1,1000]
                    });
                  }, //ONPRESSED
                  child: Text(
                    "Generar",
                    style: TextStyle(color: Colors.black54),
                  ),
                  color: Colors.white,
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.of(context).pop(pag + _rannum.toString());
                   // print(pag + _rannum.toString());
                  }, //ONPRESSED
                  child: Text(
                    "Guardar",
                    style: TextStyle(color: Colors.black54),
                  ), 
                  color: Colors.white,
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
