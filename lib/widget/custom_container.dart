import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Customcontainer extends StatelessWidget {
  String? name;
  Color? color;
  VoidCallback? onTap;

  Customcontainer({this.color, this.name, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10)
          ),
          padding: EdgeInsets.only(left: 10),
          alignment: Alignment.center,
          height: 60,
          width: double.infinity,
          child: Text(
            name!,
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
