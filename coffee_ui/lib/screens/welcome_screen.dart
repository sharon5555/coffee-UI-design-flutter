import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Material(
      child: Container(
        padding: const EdgeInsets.only(top: 100, bottom: 40),
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage("assets/coffeebg.jpg"), 
            fit: BoxFit.cover,
            opacity: 0.4,
          ),
        ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Coffee Shop", style: GoogleFonts.pacifico(
            fontSize: 50, color: Colors.white,
          ),),
        ],
      ),
      ),
    );
  }
}