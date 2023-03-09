import 'package:flutter/material.dart';

class buildbutton extends StatelessWidget {
  final String text;
  final String Width;
  const buildbutton({Key? key, required this.text, required this.Width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.parse(Width),
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.black,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              letterSpacing: 3,
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
