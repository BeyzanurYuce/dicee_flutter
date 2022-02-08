import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text('Yummies :) :)')
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          Expanded(
             child: Container(
               width: double.infinity,
                padding: EdgeInsets.all(10.0),
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> RecipePage()
                  ));
                },
                    child: Image.network('https://mocah.org/thumbs/5399670-food-food-styling-junk-food-burger-fries-french-fries-chips-sandwich-bacon-dinner-plate-fast-food-unhealthy-french-fry-pub-hamburger-fry-ketchup-mayonaise-potato-png-images.jpg')
                )
            ),
          ),
           Expanded(
             child: Container(
                 width: double.infinity,
                padding: EdgeInsets.all(10.0),
                child: ElevatedButton(onPressed: (){

                },

                    child: Image.network('https://image.freepik.com/free-photo/top-view-fettuccine-pasta-wooden-table_23-2148305665.jpg')
                )
          ),
           ),
            Expanded(
              child:Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10.0),
                  child: ElevatedButton(onPressed: (){

                  },
                      child: Image.network('https://www.crushpixel.com/big-static15/preview4/overhead-view-pizza-on-table-1929812.jpg')
                  )
              ),
            ),


        ],
      ),
    );
  }
}
class RecipePage extends StatelessWidget {
  const RecipePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor:Colors.blue,
        title: Text('Recipe :)'),
      ),
        body: Column(children: [
    Container(
    margin: EdgeInsets.all(10.0),
    width: double.infinity,

    child: Image.network(
    'https://mocah.org/thumbs/5399670-food-food-styling-junk-food-burger-fries-french-fries-chips-sandwich-bacon-dinner-plate-fast-food-unhealthy-french-fry-pub-hamburger-fry-ketchup-mayonaise-potato-png-images.jpg'),

    ),
          Container(
              child: Text(
                'Bacon Cheeseburger ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
          ),

          ),
          Container(
            width:2100,

            child:Text(
              ' \n 1 1/2 pounds ground beef chuck.\n 4 12/2-inch cubes pepper jack cheese (about 1 ounce total)  \n Kosher salt and freshly ground pepper.\n 1/2 tablespoon vegetable oil.\n 4 slices cheddar cheese (about 2 ounces)\n 4 hamburger buns.\n Ketchup, mustard and/or mayonnaise, for spreading (optional) ',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ]
        )
    );
  }
}
