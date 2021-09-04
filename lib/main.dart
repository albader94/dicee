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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                print('Left button got pressed!');
              },
              child: Image.asset('images/dice1.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                print('Right button got pressed!');
              },
              child: Image.asset('images/dice1.png'),
            ),
          ),
        ],
      ),
    );
  }
}
