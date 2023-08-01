import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/data.dart';
import '../models/item_model.dart';
import '../widget/list_item.dart';

class Numberscreen extends StatelessWidget {
  Numberscreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Number screen'),
          centerTitle: true,
          backgroundColor: Color(0xff432E29),
        ),
        body: ListView.builder(
          itemCount: Listnumbers.length,
          itemBuilder: (context, index) {
            return Listitem(
                color: Colors.orange,
                Typeaudio: 'numbers',
                item: Listnumbers[index]);
          },
        ));
  }
}
