import 'package:flutter/material.dart';
import 'package:salesgraphpro/pages/graphs.dart';
import 'package:salesgraphpro/pages/home.dart';
import 'package:salesgraphpro/pages/data.dart';

class FirstPage extends StatefulWidget {
  FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectedIndex = 1;

  void _navigateBottom(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    GraphPage(salesData: SalesData()),
    const HomePage(),
    DataPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SalesGraphPro'),
        centerTitle: true,
        backgroundColor: Color(0xFF005F40),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF005F40),
        selectedItemColor: Color.fromARGB(255, 0, 0, 0),
        currentIndex: _selectedIndex,
        onTap: _navigateBottom,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.dataset),
            label: 'Gráficos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dataset),
            label: 'Datos',
          ),
        ],
      ),
    );
  }
}
