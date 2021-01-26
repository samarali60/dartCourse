import 'package:flutter/material.dart';

class Row_of_text2 extends StatelessWidget {
   final String text1;
  final String text2;
  final String text3;
  const Row_of_text2({
    Key key,this.text1,
    this.text2,
    this.text3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(text1,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
            )),
        Text(text2,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
            )),
        Text(text3,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
            )),
      ],
    );
  }
}

