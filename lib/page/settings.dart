import 'package:flutter/material.dart';

class PageSetting extends StatefulWidget {
  const PageSetting({super.key});

  @override
  State<PageSetting> createState() => _PageSettingState();
}

class _PageSettingState extends State<PageSetting> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       extendBody: true,
       body: Container(decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/fondopantalla.jpeg"),
            fit: BoxFit.cover,
          ),
       ),),
     );
    
  }
}