import 'package:flutter/material.dart';
import 'package:proyectom1/page/settings.dart';
import 'package:proyectom1/page/counter.dart';
import 'package:proyectom1/widget/buttonNavegationCustom.dart';
import 'app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  String imagePath = "assets/images/fondopantalla.jpeg";
  int _incrementValue = 1;
  int _counterValue = 0;

  void updateImagePath(String newImagePath) {
    setState(() {
      imagePath = newImagePath;
    });
  }

  void handleIncrementValueChanged(int newValue) {
    setState(() {
      _incrementValue = newValue; // Actualizar el valor de incremento
    });
  }

  void handleCounterValueChanged(int newValue) {
    setState(() {
      _counterValue = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
          _selectedIndex == 0
              ? PageCounter(
                  onImageSelected: updateImagePath,
                  incrementValue: _incrementValue,
                  counterValue: _counterValue,
                  onCounterValueChanged: handleCounterValueChanged,
                )
              : PageSetting(
                  onIncrementValueChanged: handleIncrementValueChanged,
                  counterValue: _counterValue,
                ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(child: Container()), // Espacio para la imagen de fondo
              BottomNavigationBar(
                items: [
                  buttonNavegationItem(Icons.schedule, "Contador"),
                  buttonNavegationItem(Icons.settings, "Configuración"),
                ],
                currentIndex: _selectedIndex,
                onTap: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
