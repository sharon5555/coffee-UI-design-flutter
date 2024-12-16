import 'package:flutter/material.dart';

class AppBanner extends StatelessWidget {
  const AppBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                image: const DecorationImage(image: AssetImage("assets/banner.jpg"),
                fit: BoxFit.cover,
              ),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.orange,
                  width: 1,
                )
              ),
            );
          
  }
}
