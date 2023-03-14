

import 'package:flutter/material.dart';
import 'package:portfolio/About.dart';
import 'package:portfolio/Home.dart';
import 'package:portfolio/projects.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'home',
    debugShowCheckedModeBanner: false,
    routes: {
      'home':(context) => Home(),
      'about':(context)=>About(),
      'projects':(context)=>Projects()
    },
  ));
}



