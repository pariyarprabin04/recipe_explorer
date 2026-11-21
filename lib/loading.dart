import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    super.initState();
    // Initialization code goes here.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset(
              "assets/images/logo_receipe.png",
              height: 260.0,
              width: 240.0,
            ),
            Text(
              "receipe",
              style: const TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20.0),
            Text(
              "Made by Prabin",
              style: const TextStyle( 
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SpinKitFadingCircle(
              color: Colors.black26,
              size: 50.0,
            ),
          ],
        ),
      ),
    );
  }
}