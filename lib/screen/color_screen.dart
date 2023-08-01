import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/data.dart';
import '../widget/list_item.dart';

class ColorScreen extends StatelessWidget {
   ColorScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Colors screen'), 
      backgroundColor: Color(0xff432E29),
      centerTitle: true,),

      body: ListView.builder(
          itemCount: Listcolors.length,
          itemBuilder: (context, index) {
            return Listitem(
                color: Color(0xFF7E3FA3),
                Typeaudio: 'colors',
                item: Listcolors[index]);
          },
        )


    );
  }
}