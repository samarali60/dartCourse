import 'package:flutter/material.dart';
class Row_of_widget extends StatelessWidget {
  final IconData icon;
  final Color col;
  final String text;
  const Row_of_widget({
    this.text,
    this.col,
    this.icon,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80),
                color: col,
              ),
              height: 35,
              width: 35,
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
            Text(
              "   $text",
              style: TextStyle(color: Colors.white, fontSize: 20),
              
             // textAlign: TextAlign.end,
            ),
          ],
        ),
        Icon(
          Icons.chevron_right,
          color: Colors.white,
        )
      ],
    );
  }
}
