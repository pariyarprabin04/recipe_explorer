import 'package:flutter/material.dart';
import 'package:recepie_finder/home.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body:Text("i am home page"),
      ),
    );
  }
}      