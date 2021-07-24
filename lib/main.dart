import 'package:flutter/material.dart';
import 'pages/border_radius_previewer.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.black,
    ),
    home: BorderRadiusPreviewer(),
  ));
}
