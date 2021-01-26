import 'dart:ui';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/FlatButt.dart';
import 'package:flutter_application_4/Row.dart';
import 'package:flutter_application_4/Row_of_button.dart';
import 'package:flutter_application_4/Row_of_text1.dart';
import 'package:flutter_application_4/Row_of_text2.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color b = Color.fromRGBO(20, 102, 109, 1);
  Color c = Color.fromRGBO(20, 60, 62, 1);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            toolbarHeight: 0,
          ),
          body: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  color: Colors.black,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row_of_button(text1:'Back',text2: 'Edit',),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(2500),
                        child: Image.network(
                          'https://1.bp.blogspot.com/-DfkFwnrDvm8/XQukHigZKVI/AAAAAAABoOA/xs0XQy7w180HEd3HcU8tJkfzhAy0EoGKgCLcBGAs/s1600/6357-1.png',
                          height: 150,
                        )),
                    Text('Samar Ali',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w500)),
                    FlatButt(text: ' Master',),
                    Row_of_text1(
                      text1: '43',
                      text2: '43',
                      text3: '500',
                    ),
                    Row_of_text2(
                        text1: 'Orders', text2: 'Reviews', text3: 'Assists'),
                  ],
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20)),
                    color: c,
                  ),
                  width: double.infinity,
                  height: 230,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row_of_widget(
                          text: "Favourite Coffee",
                          icon: Icons.local_cafe,
                          col: Colors.teal,
                        ),
                        Row_of_widget(
                          text: "Past Order",
                          icon: Icons.confirmation_num,
                          col: Colors.red[300],
                        ),
                        Row_of_widget(
                          text: "Addresses",
                          icon: Icons.directions_bus,
                          col: Colors.blue[400],
                        ),
                        Row_of_widget(
                          text: "Payment Options",
                          icon: Icons.dns,
                          col: Colors.purple,
                        ),
                        Row_of_widget(
                          text: "Review Activity",
                          icon: Icons.forum,
                          col: Colors.pink,
                        ),
                      ],
                    ),
                  ))
            ],
          )),
    );
  }
}

