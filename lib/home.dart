import 'dart:math';
import 'package:flutter/material.dart';



class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home>{
  TextEditingController searchController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    var recipeName = [
      "Chicken Curry",
      "dal bhat ",
      "Indian",
      " nepali",
      " allo mutter",
    ];
    final _random = Random();
    var recipe = recipeName[_random.nextInt(recipeName.length)];
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context)
                .size
                .width, //Mediaquiry is used to get the size of the screen
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 4, 94, 210),
                  Color.fromARGB(255, 226, 8, 143),
                ],
              ),
            ),
          ),
          Column(
            children: [
              SafeArea(
                      child: Container(
                        //container for search bar
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        margin: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 174, 180, 183),
                          borderRadius: BorderRadius.circular(24),
                        ),
                                  
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                margin: EdgeInsets.fromLTRB(3, 0, 3, 0),
                                child: Icon(Icons.search, color: Colors.black),
                              ),
                            ),
                            Expanded(
                              child: TextField(
                                controller: searchController,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Lets cook somthing  maybe  $recipe",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  
              
              //SearchBar
  Container(
            
              padding: EdgeInsets.symmetric(horizontal:24),
            
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "WHAT TO YOU WANT TO COOK TODAY",
                    style: TextStyle(fontSize: 33, color: Colors.white),
                  ),
                  SizedBox(height:10),
                  Text(" Lets cook something new today 👌👌", style: TextStyle(fontSize: 20,color:Colors.white),),
                ],
              ),
            ),



            
            
            ],
          
          )
  

          ], //children
      ),
    );
  }
}
