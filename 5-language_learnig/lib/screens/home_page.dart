import 'package:flutter/material.dart';
import 'package:language_learnig/screens/colors_page.dart';
import 'package:language_learnig/screens/family_members_page.dart';
import 'package:language_learnig/screens/numbers_page.dart';
import 'package:language_learnig/screens/phrases_page.dart';

import '../components/category_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F3Fa),
      appBar: AppBar(
        backgroundColor: Color(0xFF100102),
        title: Text('Toku'),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ( context) {
                return NumbersPage();
              }));
            },
            color: Color(0xFFEA592A),
            text: 'Numbers',
          ),
          Category(
             onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ( context) {
                return FamilyMembersPage();
              }));
            },
            
            color: Color(0xFFFC8B5E),
            text: 'Family Members',
          ),
          Category(
             onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ( context) {
                return ColorsPage();
              }));
            },
            color: Color(0xFFC0587E),
            text: 'Colors',
          ),
          Category(
             onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ( context) {
                return PhrasesPage();
              }));
            },
            color: Color(0xFF4B1E19),
            text: 'Phrases',
          ),
        ],
      ),
    );
  }
}
