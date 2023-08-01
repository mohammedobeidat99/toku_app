import 'package:flutter/material.dart';

import '../constant/data.dart';
import '../widget/phrases_item.dart';

class PhraseScreen extends StatelessWidget {
  PhraseScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Phrases screen'),
          centerTitle: true,
                  backgroundColor: Color(0xff432E29),

        ),
        body: ListView.builder(
          itemCount: Listphrases.length,
          itemBuilder: (context, index) {
            return Phrasesitem(
                color: Color(0xFF48A5CC),
                Typeaudio: 'phrases',
                item: Listphrases[index]);
          },
        ));
  }
}
