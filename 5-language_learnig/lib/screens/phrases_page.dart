import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:language_learnig/components/list_item.dart';
import 'package:language_learnig/models/phrases_item.dart';

import '../models/item.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<Phrases> phrases = const [
    Phrases(
      sound: 'assets/sounds/phrases/are_you_coming.wav',
      jpName: 'Kimasu ka?',
      enName: 'are you coming?',
    ),
    Phrases(
      sound: 'assets/sounds/phrases/dont_forget_to_subscribe.wav',
      jpName: 'Kōdoku suru koto o wasure',
      enName: 'dont forget to subscribe',
    ),
    Phrases(
      sound: 'assets/sounds/phrases/how_are_you_feeling.wav',
      jpName: 'Go kibun wa ikagadesu ka?',
      enName: 'how are you feeling?',
    ),
    Phrases(
      sound: 'assets/sounds/phrases/i_love_anime.wav',
      jpName: 'Watashi wa anime ga daisuki',
      enName: 'i love anime',
    ),
    Phrases(
      sound: 'assets/sounds/phrases/i_love_programming.wav',
      jpName: 'Watashi wa puroguramingu',
      enName: 'i love programming',
    ),
    Phrases(
      sound: 'assets/sounds/phrases/programming_is_easy.wav',
      jpName: 'Puroguramingu wa',
      enName: 'programming is easy',
    ),
    Phrases(
      sound: 'assets/sounds/phrases/what_is_your_name.wav',
      jpName: 'Namae wa nani?',
      enName: 'what is your name?',
    ),
    Phrases(
      sound: 'assets/sounds/phrases/yes_im_coming.wav',
      jpName: 'Hai, kimasu',
      enName: 'yes im coming',
    ),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('Phrases'),
        backgroundColor: Color(0xFF100102),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return PhrasesList(phrase: phrases[index], color: Color(0xFF4B1E19));
        },
      ),
    
    );
  }
}