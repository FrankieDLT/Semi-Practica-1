import 'package:flutter/material.dart';

import 'pagina2.dart';
import 'pagina3.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
     
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  Homepage({
    Key key,
  }) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final _textController = TextEditingController();
  String pag2 = ' ';
  String pag3 = ' ';
  bool _isseen = true;

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Tarea 1'),
        backgroundColor: Colors.black54,
        actions: [
          IconButton(
              icon: Icon(
                Icons.star,
                color: _isseen ? Colors.black38 : Colors.yellow,
              ),
              onPressed: () {
                setState(() {
                  _isseen = !_isseen;
                });
              }),
        ],
      ),
      body: //SingleChildScrollView(child:
          Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          /* SizedBox(
              height: 24,
            ), */
          Expanded(
            child: Center(
              child: Text(
                "Tercera Llamada!",
                style: TextStyle(
                    fontSize: 32,
                    color: Colors.grey[500],
                    fontFamily: "Dancing Script"),
              ),
            ),
            flex: 1,
          ),
          Expanded(
            child: Image.asset("images/fotomain.jpg"),
            flex: 3,
          ),
          /* SizedBox(
              height: 20,
            ), */
          Expanded(
            child: Text(
              "Sección de Acciones a Realizar",
              style: TextStyle(fontSize: 18),
            ),
            flex: 0,
          ),
          /* SizedBox(
              height: 30,
            ), */
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  onPressed: () {
                    //Mostrar Dialogo
                    showDialog(
                      context: context,
                      builder: (_) {
                        return AlertDialog(
                          title: Text(" Ingrese de Datos"),
                          content: SingleChildScrollView(
                            child: ListBody(
                              children: <Widget>[
                                TextField(
                                  controller: _textController,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: "Ingrese Palabra",
                                    prefix: Icon(Icons.border_color),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          actions: <Widget>[
                            FlatButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("Cancelar"),
                            ),
                            FlatButton(
                              onPressed: () async{
                                pag2 = _textController.text;
                                Navigator.pop(context);
                                pag2 = await Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Pagina2(data: pag2)));
                                setState(() {
                                  pag2=pag2;
                                });
                              },
                              child: Text("Aceptar"),
                            ),
                          ],
                        );
                      },
                    );
                  }, //ONPRESSED
                  child: Text(
                    "Pagina 2",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.black54,
                ),
                MaterialButton(
                  onPressed: () async{
                    pag3 = await Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Pagina3()));
                    setState(() {
                                  pag3=pag3;
                                });
                  },
                  child: Text(
                    "Pagina 3",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.black54,
                ),
              ],
            ),
            flex: 1,
          ),
          /* SizedBox(
              height: 24,
            ), */
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Pg. 2 => $pag2",
                  style: TextStyle(color: Colors.black54),
                ),
                 SizedBox(
                    height: 24,
                  ), 
                Expanded(
                  child: Text(
                    "Pg. 3 => $pag3",
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
              ],
            ),
            flex: 1,
          ),
        ],
      ),
      //),
    );
  }
}
