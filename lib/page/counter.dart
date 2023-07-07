import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../widget/circularAvatarCustom.dart';


class PageCounter extends StatefulWidget {
  final Function(String) onImageSelected;
 final int incrementValue;
  const PageCounter({super.key, required this.onImageSelected, required this.incrementValue});

  @override
  State<PageCounter> createState() => _PageCounterState();
}

class _PageCounterState extends State<PageCounter> {
  int _counter = 0;

    void _incrementCounter() {
    setState(() {
      _counter += widget.incrementValue;
    });
  }
   void _restCounter() {
    setState(() {
      if(_counter > 0)
      {
        _counter-= widget.incrementValue;
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
              const Text("Cambiar de fondo"), 
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   CircleAvatarCustom(imagePath:"assets/images/fondopantalla.jpeg", onImageSelected: widget.onImageSelected),
                  const SizedBox(width: 10),
                   CircleAvatarCustom(imagePath:"assets/images/fondopantalla2.jpg", onImageSelected: widget.onImageSelected),
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
                Text(
                _counter.toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                )
              ),
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
                        _restCounter();
                      },
                      icon: const Icon(Icons.remove),
                      iconSize: 40,
                      color: Colors.white,
                                  
                    ),
                  ),

                  const SizedBox(width: 10,),
                      Container(
                        width: 100,  // Ajusta el ancho del Container según tus necesidades
                        height: 100,
                        decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      color: Colors.white.withAlpha(30),
                    ),
                    child: IconButton(
                      onPressed: () {
                        _cleanCounter();
                      },
                      icon: const Text("Limpiar",style: TextStyle(color: Colors.white, fontSize: 20)),
                     // iconSize: 100,
                      color: Colors.white,
                    ),
                  ),
                   const SizedBox(width: 10,),
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