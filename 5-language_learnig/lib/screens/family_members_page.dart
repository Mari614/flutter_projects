import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:language_learnig/components/list_item.dart';

import '../models/item.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});
  final List<Item> FamilyMembers = const [
    Item(
      sound: 'assets/sounds/family_members/daughter.wav',
      image: 'assets/images/family_members/family_daughter.png',
      jpName: 'musume',
      enName: 'daughter',
    ),
    Item(
      sound: 'assets/sounds/family_members/father.wav',
      image: 'assets/images/family_members/family_father.png',
      jpName: 'chichi',
      enName: 'father',
    ),
    Item(
      sound: 'assets/sounds/family_members/grand father.wav',
      image: 'assets/images/family_members/family_grandfather.png',
      jpName: 'sofu',
      enName: 'grandfather',
    ),
    Item(
      sound: 'assets/sounds/family_members/grand mother.wav',
      image: 'assets/images/family_members/family_grandmother.png',
      jpName: 'sobo',
      enName: 'grandmother',
    ),
    Item(
      sound: 'assets/sounds/family_members/mother.wav',
      image: 'assets/images/family_members/family_mother.png',
      jpName: 'haha',
      enName: 'mother',
    ),
    Item(
      sound: 'assets/sounds/family_members/older bother.wav',
      image: 'assets/images/family_members/family_older_brother.png',
      jpName: 'ani',
      enName: 'older brother',
    ),
    Item(
      sound: 'assets/sounds/family_members/older sister.wav',
      image: 'assets/images/family_members/family_older_sister.png',
      jpName: 'ane',
      enName: 'older sister',
    ),
    Item(
      sound: 'assets/sounds/family_members/son.wav',
      image: 'assets/images/family_members/family_son.png',
      jpName: 'musuko',
      enName: 'son',
    ),
    Item(
      sound: 'assets/sounds/family_members/younger brohter.wav',
      image: 'assets/images/family_members/family_younger_brother.png',
      jpName: 'otouto',
      enName: 'younger brother',
    ),
    Item(
      sound: 'assets/sounds/family_members/younger sister.wav',
      image: 'assets/images/family_members/family_younger_sister.png',
      jpName: 'imouto',
      enName: 'younger sister',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('FamilyMembers'),
        backgroundColor: Color(0xFF100102),
      ),
      body: ListView.builder(
        itemCount: FamilyMembers.length,
        itemBuilder: (context, index) {
          return ListItem(number: FamilyMembers[index], color: Color(0xFFFC8B5E),);
        },
      ),
    
    );
  }
}