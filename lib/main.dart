import 'package:flutter/material.dart';
import 'package:proyectom1/page/settings.dart';
import 'package:proyectom1/page/count.dart';

import 'app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {  
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
      theme: AppTheme.lightTheme,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  int _counter = 0;

  // funcion que incrementa el contador en 1 y se ocupa setState para actualizar el estado
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: _selectedIndex == 0 ? const PageCount() : const PageSetting(),
      bottomNavigationBar:
        BottomNavigationBar(
            elevation: 0,
           // backgroundColor: Colors.transparent,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.schedule), label: "Contador"),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Configuración"),
            ],
            currentIndex: _selectedIndex,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          
          ),
        );
  }
}
