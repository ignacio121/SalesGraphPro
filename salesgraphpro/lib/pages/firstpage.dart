import 'package:flutter/material.dart';
import 'package:salesgraphpro/pages/graphs.dart';
import 'package:salesgraphpro/pages/home.dart';
import 'package:salesgraphpro/pages/profile.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectedIndex = 1;

  void _navigateBottom(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    GraphPage(),
    HomePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SalesGraphPro'),
        centerTitle: true,
        backgroundColor: Color(0xFF005F40),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF005F40),
        selectedItemColor: Color(0xffEDEDED),
        currentIndex: _selectedIndex,
        onTap: _navigateBottom,
        items: [
          //Graficos
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_graph_outlined),
            label: 'Graficos',
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
            ),
      ]),
    );
  }
}