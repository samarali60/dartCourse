import 'package:flutter/material.dart';

class FlatButt extends StatelessWidget {
  final String text;
  const FlatButt({
    this.text,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: Colors.pink,
          onPressed: () {},
          child: Row(
            children: [
              Icon(
                Icons.military_tech,
                color: Colors.white,
                size: 20,
              ),
              Text(text,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  )),
            ],
          )),
    );
  }
}
