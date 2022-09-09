// Aluno: Jean Berly 303
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
      title: "Contando os alunes!!!",
      home: Home()
  ));
}


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _num_alunos = 0;
  String _frase = "Chegai mais fiiii!!";
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("Alunos: $_num_alunos"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(9.0),
              child: TextButton(
                  onPressed: () {setState(() {
                    if (_num_alunos == -1) _frase = "Chega mas fiiii!";
                    _num_alunos++;
                  });},
                  child: Text("+1", style: TextStyle(fontSize: 40, color: Colors.black))
              ),
            ),
            Padding(
                padding: EdgeInsets.all(9.0),
                child: TextButton(
                    onPressed: () {setState(() {
                      if (_num_alunos <= 0) _frase = "Oi????? Chama o Ullas que deu jeba!";
                      _num_alunos--;
                    });},
                    child: Text("-1", style: TextStyle(fontSize: 40, color: Colors.black),))
            )
          ],
        ),
        Text(
          "$_frase",
          style: TextStyle(color: Colors.black, fontStyle: FontStyle.italic, fontSize: 30.0),
        )
      ],
    );
  }
}
