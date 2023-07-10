import 'package:flutter/material.dart';
import 'package:proyectom1/widget/text_custom.dart';
import '../widget/circle_avatar_custom.dart';

class PageCounter extends StatefulWidget {
  final Function(String) onImageSelected;
  final Function(int) onCounterValueChanged;
  final int incrementValue;
  final int counterValue;
  const PageCounter({
    super.key,
    required this.onImageSelected,
    required this.incrementValue,
    required this.counterValue,
    required this.onCounterValueChanged,
  });

  @override
  State<PageCounter> createState() => _PageCounterState();
}

class _PageCounterState extends State<PageCounter> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    _counter = widget.counterValue;
    // Inicializa el contador con el valor pasado
  }

  void _incrementCounter() {
    setState(() {
      _counter += widget.incrementValue;
      widget.onCounterValueChanged(_counter);
    });
  }

  void _decreaseCounter() {
    setState(() {
      if (_counter > 0) {
        _counter -= widget.incrementValue;
        if(_counter < 0) _counter = 0;
        widget.onCounterValueChanged(_counter);
      }
    });
  }

  void _cleanCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text("Cambiar de fondo",style: styleTitle(28),),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatarCustom(
                        imagePath: "assets/images/fondopantalla.jpeg",
                        onImageSelected: widget.onImageSelected),
                    const SizedBox(width: 10),
                    CircleAvatarCustom(
                        imagePath: "assets/images/fondopantalla2.jpg",
                        onImageSelected: widget.onImageSelected),
                  ],
                ),
              ),
            ],
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(_counter.toString(),
                  style: styleNumber(100, 1
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withAlpha(30),
                    ),
                    child: IconButton(
                      onPressed: () {
                        _decreaseCounter();
                      },
                      icon: const Icon(Icons.remove),
                      iconSize: 40,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width:
                        100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withAlpha(30),
                    ),
                    child: IconButton(
                      onPressed: () {
                        _cleanCounter();
                      },
                      icon: Text("Limpiar",
                          style: styleTitle(20)),
                      // iconSize: 100,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withAlpha(30),
                    ),
                    child: IconButton(
                      onPressed: () {
                        _incrementCounter();
                      },
                      icon: const Icon(Icons.add),
                      iconSize: 40,
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
