import 'package:flutter/material.dart';
import '../widget/text_custom.dart';

class PageSetting extends StatefulWidget {
  final Function(int) onIncrementValueChanged;
  final int counterValue;

  const PageSetting(
      {Key? key,
      required this.onIncrementValueChanged,
      required this.counterValue})
      : super(key: key);

  @override
  State<PageSetting> createState() => _PageSettingState();
}
class _PageSettingState extends State<PageSetting> {
  final TextEditingController _controller = TextEditingController();
  int _incrementValue = 1;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  void initState() {
    super.initState();
    _incrementValue = widget
        .counterValue; // Inicializa el valor de incremento con el valor pasado
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
              "Cuanto va incrementar?",style: styleTitle(20),            
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _controller,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "1,2,3...",
                ),
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                style: styleNumber(20, 0),
                onChanged: (value) {
                  final newValue = int.tryParse(value);
                  if (newValue != null) {
                    setState(() {
                    
                      _incrementValue = newValue > 0
                          ? newValue
                          : 1; // Actualizar el valor de incremento al cambiar el texto
                    });
                  }
                },
              ),
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withAlpha(30),
              ),
              child: IconButton(
                onPressed: () {
                  if (_controller.text.isNotEmpty) { 
                    widget.onIncrementValueChanged(_incrementValue);
                  }
                 
                },
                icon:  Text("Mostrar",
                    style: styleTitle(20)),
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
