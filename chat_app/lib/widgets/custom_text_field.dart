import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';



class CustomTExtField extends StatelessWidget {
   CustomTExtField({this.hintText});

   String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                color: Colors.white70,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color:  Colors.white,
                ),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color:  Colors.white,
                ),
              ),
            ),
          );
  }
}