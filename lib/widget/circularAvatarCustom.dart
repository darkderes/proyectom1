import 'package:flutter/material.dart';

class CircleAvatarCustom extends StatelessWidget {
  final String imagePath;
  final Function(String) onImageSelected;

  const CircleAvatarCustom({Key? key, required this.imagePath, required this.onImageSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => onImageSelected(imagePath),
      child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.white,
              width: 4.0,
            ),
          ),
          child: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(imagePath),
          ),
        ),
    );
  
  }
}