import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/data.dart';
import '../widget/list_item.dart';

class FamilyScreen extends StatelessWidget {
   FamilyScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Family screen'), 
      backgroundColor: Color(0xff432E29),
      centerTitle: true,),

      body: ListView.builder(
          itemCount: Listfamily.length,
          itemBuilder: (context, index) {
            return Listitem(
                color: Color(0xFF51AB45),
                Typeaudio: 'family_members',
                item: Listfamily[index]);
          },
        )


    );
  }
}