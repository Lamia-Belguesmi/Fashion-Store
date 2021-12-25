import 'package:flutter/material.dart';
import 'style_main_page.dart';

class StyleTheoryApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:StyleMainPage(),
      theme: ThemeData(
        canvasColor: Colors.transparent,
      ),
    );
  }
}
