import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/screen/phrases_screen.dart';


import '../widget/custom_container.dart';
import 'color_screen.dart';
import 'family_screen.dart';
import 'number_screen.dart';

class Tokuapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF4DA),
      appBar: AppBar(
        title: Text('Toku app'),
        backgroundColor: Color(0xff432E29),
      ),
      body: Column(
        children: [
          Customcontainer(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Numberscreen(),
                  ));
              print('Number');
            },
            color: Colors.orange,
            name: 'Number',
          ),
          Customcontainer(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FamilyScreen(),
                  ));
              
              print('Family members');
            },
            color: Color(0xFF51AB45),
            name: 'Family members',
          ),
          Customcontainer(
            onTap: () {
               Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ColorScreen(),
                  ));

              print('Colors');
            },
            color: Color(0xFF7E3FA3),
            name: 'Colors',
          ),
          Customcontainer(
            onTap: () {

              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PhraseScreen(),
                  ));
              print('Phrases');
            },
            color: Color(0xFF48A5CC),
            name: 'Phrases',
          ),
        ],
      ),
    );
  }
}
