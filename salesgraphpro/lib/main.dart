import 'package:flutter/material.dart';
import 'package:salesgraphpro/pages/firstpage.dart';

void main() => runApp(Aplication());

class Aplication extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Navigation",
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      theme: ThemeData(
        primaryColor: Color(0xFF2FF008E)
        
      ),
    );
  }
}