
import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
              backgroundColor: Colors.red,
              appBar: AppBar(
                backgroundColor: Colors.red,
                title: const Text(
                  'Dicee',
                ),
              ),
              body: Dicee()
          )
      )
  )
  );
}
class Dicee extends StatefulWidget {
  const Dicee({Key? key}) : super(key: key);

  @override
  _DiceeState createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
  int right_dice =1;
  int left_dice=1;

  void rollDice(){
    setState(() {
      right_dice = Random().nextInt(6)+1;
      left_dice = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed:(){
                  rollDice();
                },
                child: Image.asset('images/dice$left_dice.png'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed:(){
                  rollDice();
                },
                child: Image.asset('images/dice$right_dice.png'),
              ),
            ),
          ]
      ),
    );
  }
}


