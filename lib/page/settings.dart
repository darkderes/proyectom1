import 'package:flutter/material.dart';


class PageSetting extends StatefulWidget {
  final Function(int) onIncrementValueChanged;

  const PageSetting({Key? key, required this.onIncrementValueChanged}) : super(key: key);

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
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Cuanto va incrementar?",
              style: TextStyle(color: Colors.white, fontSize: 28),
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
                style: const TextStyle(color: Color.fromARGB(255, 14, 7, 7), fontSize: 28),
                onChanged: (value) {
                  final newValue = int.tryParse(value);
                  if (newValue != null) {
                    setState(() {
                      _incrementValue = newValue > 0 ? newValue : 1; // Actualizar el valor de incremento al cambiar el texto
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
                  widget.onIncrementValueChanged(_incrementValue);
                  Navigator.pop(context);
                },
                icon: const Text("Mostrar", style: TextStyle(color: Colors.white, fontSize: 20)),
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
