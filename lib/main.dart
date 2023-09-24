import 'package:flutter/material.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: myHomePageStateFull(),
    );
  }
}

class myHomePage extends StatelessWidget {
  myHomePage({super.key});
  int edad = 15;
  String saludo = "Bienvenidos todos";

  void botonPresionado(){
    edad++;

    if(edad >= 18)
      saludo = "Bienvenido a la fiesta";
    else
      saludo = "Lo siento, no puedes pasar";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Statefull"),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(saludo),
          MaterialButton(
              onPressed: botonPresionado,
            color: Colors.pinkAccent,
            child: Text("Verificar"),
          )
        ],
      ),
    );
  }
}

class myHomePageStateFull extends StatefulWidget {
  const myHomePageStateFull({super.key});
  @override
  State<myHomePageStateFull> createState() => _myHomePageStateFullState();
}

class _myHomePageStateFullState extends State<myHomePageStateFull> {
  int edad = 15;
  String saludo = "Bienvenidos todos";

  void botonPresionado(){
    setState(() {
      edad++;

      if(edad >= 18)
        saludo = "Bienvenido a la fiesta";
      else
        saludo = "Lo siento, no puedes pasar";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Statefull"),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(saludo),
          MaterialButton(
            onPressed: botonPresionado,
            color: Colors.pinkAccent,
            child: Text("Verificar"),
          )
        ],
      ),
    );
  }
}
