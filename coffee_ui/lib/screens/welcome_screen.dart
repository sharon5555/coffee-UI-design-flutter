import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_screen.dart';

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
            opacity: 0.5,
          ),
        ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Coffee Shop", 
          style: GoogleFonts.pacifico(
            fontSize: 50, 
            color: Colors.orange,
          ),
          ),
          Column(children: [
            Text("Feeling Low? Take a Sip of Coffee", 
            style: TextStyle(
              color: Colors.orange.withOpacity(0.8),
              fontSize: 18,
              fontWeight: FontWeight.w500,
              letterSpacing: 1,
            ),
            ),
            const SizedBox(height: 80),
            Material(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ));
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                  child: const Text("Get Started", 
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),),
                ),
              ),
            )
          ],
          ),
        ],
      ),
      ),
    );
  }
}