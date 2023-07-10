import 'package:flutter/material.dart';

// estilos de texto para la app
TextStyle styleTitle (int size) {
return TextStyle(
  fontSize: size.toDouble(),
  color: Colors.white,
  fontFamily: 'MonserratMedium',
  
);
}
TextStyle styleNumber  (int size,int color) {
return TextStyle(
  fontSize: size.toDouble(),
  color: color == 1 ? Colors.white : Colors.black,
  fontFamily: 'MonserratBold', 
  fontWeight: FontWeight.bold,
);
}