import 'package:flutter/material.dart';

class ItemWidget extends StatefulWidget {
  const ItemWidget({super.key});

  @override
  State<ItemWidget> createState() => _ItemsWidgetState();
}

class _ItemsWidgetState extends State<ItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [RichText(text: const TextSpan(text: "Enjoy your\n morning",
          style: TextStyle(color: Colors.orange),
        ),
          ),
          ],
        )),
    );
  }
}