import 'package:flutter/material.dart';
import 'package:salesgraphpro/pages/firstpage.dart';

void main() => runApp(const Aplication());

class Aplication extends StatelessWidget {
  const Aplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Navegación",
      debugShowCheckedModeBanner: false,
      home: const FirstPage(),
      theme: ThemeData(
          // ignore: use_full_hex_values_for_flutter_colors
          primaryColor: const Color(0xff2ff008e)),
    );
  }
}
