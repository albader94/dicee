import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Dicee',
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Dicee'),
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget{
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage>{
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  leftDiceNumber = 5;
                });
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                print('Right button got pressed!');
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}