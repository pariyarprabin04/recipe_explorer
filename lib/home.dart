import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children:[
          Container(
            width:MediaQuery.of(context).size.width,//Mediaquiry is used to get the size of the screen
            height:MediaQuery.of(context).size.height,
          decoration:BoxDecoration(
              gradient:LinearGradient(colors:   [
                Color.fromARGB(255, 4, 94, 210),
                Color.fromARGB(255, 226, 8, 143),
              ],
              ),
              ),
        ),
      Column(children: [


        //SearchBar
      ],)
      ])

    );
}}