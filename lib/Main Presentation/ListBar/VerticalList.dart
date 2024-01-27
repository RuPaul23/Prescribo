import 'package:flutter/material.dart';

class VerticalList extends StatelessWidget {

final String child;
VerticalList({required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child : SizedBox(
        width: 60,
        child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Color(0xE200AAFF),
          borderRadius: BorderRadius.circular(20),
            ),
        child: Center( 
          child: Text(child, 
          style: TextStyle(fontSize: 20, color: Colors.white),),
          ),
        ),
    ),
  );
  }
}
