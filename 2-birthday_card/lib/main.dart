import 'package:flutter/material.dart';

void main() {
 runApp(BirthdayCard());

}


class BirthdayCard extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffD2BCD5),
        body: Center(
          child: Image(image: AssetImage('Images/WhatsApp Image 2022-09-02 at 12.57.24 AM.jpeg') ,)),
      ),
    );
  }
}