import 'package:flutter/material.dart';

class Row_of_button extends StatelessWidget {
  final String text1;
  final String text2;
  const Row_of_button({
    this.text1,this.text2,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FlatButton(
            onPressed: () {},
            child: Row(
              children: [
                Icon(Icons.arrow_back_ios, color: Colors.pink),
                Text(
                 text1,
                  style: TextStyle(color: Colors.pink, fontSize: 20),
                )
              ],
            )),
        FlatButton(
            onPressed: () {},
            child: Text(
              text2,
              style: TextStyle(color: Colors.pink, fontSize: 20),
            ))
      ],
    );
  }
}
