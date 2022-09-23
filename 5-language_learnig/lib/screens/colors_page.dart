import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:language_learnig/components/list_item.dart';

import '../models/item.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<Item> Colors1 = const [
    Item(
      sound: 'assets/sounds/colors/black.wav',
      image: 'assets/images/colors/color_black.png',
      jpName: 'burakku',
      enName: 'black',
    ),
    Item(
      sound: 'assets/sounds/colors/brown.wav',
      image: 'assets/images/colors/color_brown.png',
      jpName: 'chairo',
      enName: 'brown',
    ),
    Item(
      sound: 'assets/sounds/colors/dusty yellow.wav',
      image: 'assets/images/colors/color_dusty_yellow.png',
      jpName: 'hokori ppoi kiiro',
      enName: 'dusty yellow',
    ),
    Item(
      sound: 'assets/sounds/colors/gray.wav',
      image: 'assets/images/colors/color_gray.png',
      jpName: 'gure',
      enName: 'gray',
    ),
    Item(
      sound: 'assets/sounds/colors/green.wav',
      image: 'assets/images/colors/color_green.png',
      jpName: 'midori',
      enName: 'green',
    ),
    Item(
      sound: 'assets/sounds/colors/red.wav',
      image: 'assets/images/colors/color_red.png',
      jpName: 'aka',
      enName: 'red',
    ),
    Item(
      sound: 'assets/sounds/colors/white.wav',
      image: 'assets/images/colors/color_white.png',
      jpName: 'shiro',
      enName: 'white',
    ),
    Item(
      sound: 'assets/sounds/colors/yellow.wav',
      image: 'assets/images/colors/yellow.png',
      jpName: 'kiiro',
      enName: 'yellow',
    ),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('Colors'),
        backgroundColor: Color(0xFF100102),
      ),
      body: ListView.builder(
        itemCount: Colors1.length,
        itemBuilder: (context, index) {
          return ListItem(number: Colors1[index], color: Color(0xFFC0587E),);
        },
      ),
    
    );
  }
}