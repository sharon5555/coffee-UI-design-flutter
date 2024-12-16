import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: const TextSpan(
                  text: "Enjoy your\n Morning ",
              style: TextStyle(color: Colors.orange,
              fontSize: 25,
              fontWeight: FontWeight.w500,
              ),
              children: [
                TextSpan(
                  text: "Coffee ",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.lime,
                  ),
                ),
                WidgetSpan(child: Icon(
                  Icons.coffee, 
                  color: Colors.lime, 
                  size: 25, 
                ),
                ),
              ],
              ),
              ),
              IconButton(onPressed: () {}, 
              icon: const Icon(
                Icons.notifications_outlined, 
                size: 30, color: Colors.orange,
              ),),
            ],
          );
  }
}