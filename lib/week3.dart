import 'dart:math';
import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
      home: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.red,
            appBar: AppBar(
              title: Text("Dicee "),
              backgroundColor: Colors.red,
            ),
          )
      )
  )
  );
}
class Dices extends StatefulWidget {
  const Dices({Key? key}) : super(key: key);
  @override
  _DicesState createState() => _DicesState();
}
class _DicesState extends State<Dices> {
  int leftDice= 1;
  int rightDice = 1;
  void rollDices(){
    setState(() {
      leftDice = Random().nextInt(6)+1;
      rightDice = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(child: TextButton(
            onPressed:(){
              rollDices();
            },
            child: Image.asset('Images/dice1$rightDice.jpg'),
          ),
          ),
          Expanded(child: TextButton(
            onPressed:(){
              rollDices();
            },
            child: Image.asset('Images/dice2$leftDice.jpg'),
          )
          )
        ],
      ),
    );
  }
}