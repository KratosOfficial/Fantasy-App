import 'package:flutter/material.dart';

class buildtextfield extends StatelessWidget {
  final String hintText, labelText;
  final IconData? icon;

  const buildtextfield(
      {Key? key, required this.hintText, required this.labelText, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          labelStyle: TextStyle(color: Colors.grey[600]),
          prefixIcon: Icon(
           icon,
            color: Color(0xffC41B24),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: Colors.black, width: 1),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: Colors.black, width: 1),
          ),
        ),
      ),
    );
  }
}
