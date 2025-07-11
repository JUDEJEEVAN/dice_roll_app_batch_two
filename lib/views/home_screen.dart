import 'dart:math';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // to randomly show the dice images
  int imageNumber = Random().nextInt(5) + 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD0D0D0),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 48),
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // title
              Text(
                'DICE ROLL APP',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w800,
                  color: Colors.black.withAlpha(105),
                ),
              ),
              // Title(color: Colors.blueAccent, child: Text('Dice Roll App')),

              // image
              Image.asset('assets/images/dice-$imageNumber.png'),

              // button
              ElevatedButton(
                onPressed: () {
                  // rebuild the screen
                  setState(() {
                    imageNumber = Random().nextInt(5) + 1;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff122625),
                  textStyle: TextStyle(color: Colors.white),
                  minimumSize: Size(
                    MediaQuery.of(context).size.width * 0.7,
                    51,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(12),
                  ),
                ),
                child: Text(
                  ('Roll Dice').toUpperCase(),
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
