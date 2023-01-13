import 'package:flutter/material.dart';
import 'package:kbc/home.dart';
import 'package:kbc/second.dart';
import 'package:kbc/third.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => Home(),
        'Second':(context) => Second(),
        'Third':(context) => Third(),
      },
    ),
  );
}