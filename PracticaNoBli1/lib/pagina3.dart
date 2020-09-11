//import 'dart:html';

import 'package:flutter/material.dart';

class Pagina3 extends StatelessWidget {
  const Pagina3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina 3"),
        backgroundColor: Colors.black54,
      ),
      body: Container(
          child: 
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                onPressed: () {
                  Navigator.of(context).pop("(◕ᴥ◕ʋ)");
                }, //ONPRESSED
                child: Text(
                  "(◕ᴥ◕ʋ)",
                  style: TextStyle(color: Colors.black54),
                ),
                color: Colors.white,
              ),

              MaterialButton(
                onPressed: () {
                   Navigator.of(context).pop("ʕ·͡ᴥ·ʔ");
                }, //ONPRESSED
                child: Text(
                  "ʕ·͡ᴥ·ʔ",
                  style: TextStyle(color: Colors.black54),
                ),
                color: Colors.white,
              ),

              MaterialButton(
                onPressed: () {
                   Navigator.of(context).pop("¯\_(ツ)_/¯");
                }, //ONPRESSED
                child: Text(
                  "¯\_(ツ)_/¯",
                  style: TextStyle(color: Colors.black54),
                ),
                color: Colors.white,
              ),
            ],
          ),
        ),
    );
  }
}
