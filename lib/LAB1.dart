import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainApp(),
    );
  }
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            title: const Text(
              'Beyzanur Yuce',
            ),
            backgroundColor: Colors.orange,
            actions: const [
              Padding(
                padding: EdgeInsets.all(8),
              ),
              Icon(
                Icons.favorite,
                color: Colors.white,
              ),
              Padding(
                padding: EdgeInsets.all(8),
              ),
              Icon(
                Icons.search,
                color: Colors.white,
              ),
             Padding(
                padding: EdgeInsets.all(8),
              ),
            ]),
        body: Column(children: [
          Container(
          margin: EdgeInsets.fromLTRB(10, 20, 10, 10),
          width: double.infinity,

              child: Image.network(
                  'https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2015/06/28184009/Golden-Retriever-laying-down-playing-with-a-cat.jpeg'),

          ),


          Container(
          margin: EdgeInsets.fromLTRB(10, 8, 10, 8),
          width: double.infinity,
              child: Image.network(
                      'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dogs-and-cats-snuggle-together-royalty-free-image-578593548-1553616085.jpg?crop=0.668xw:1.00xh;0.167xw,0&resize=640:*')
          ),
    ]
        ),

    );

  }
}
