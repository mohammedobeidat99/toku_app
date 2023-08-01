import 'dart:ui';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/item_model.dart';

class Phrasesitem extends StatelessWidget {
  Item item;
  Color color;
  String Typeaudio;
  Phrasesitem(
      {required this.item, required this.color, required this.Typeaudio});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        border: Border.all(width: 0.5, color: Color(0xff432E29)),
      ),
      height: 80,
      child: Row(
        children: [
         
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    item.jpname,
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(item.enname, style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: IconButton(
                onPressed: () {
                  AudioCache audioCache =
                      AudioCache(prefix: 'assets/sounds/$Typeaudio/');
                  audioCache.play(item.audio);
                  print(item.audio);
                },
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 25,
                ),
              ))
        ],
      ),
    );
  }
}
