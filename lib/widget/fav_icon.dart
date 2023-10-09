import 'package:flutter/material.dart';

class AnimatedFavoriteIcon extends StatefulWidget {
  const AnimatedFavoriteIcon({
    super.key,
  });

  @override
  AnimatedFavoriteIconState createState() => AnimatedFavoriteIconState();
}

class AnimatedFavoriteIconState extends State<AnimatedFavoriteIcon> {
  bool pressed = false;

  void togglePressed() {
    setState(() {
      pressed = !pressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    Color iconColor = pressed
        ? const Color.fromARGB(255, 249, 2, 2)
        : const Color.fromARGB(255, 136, 133, 133);
    return GestureDetector(
      onTap: togglePressed,
      child: AnimatedContainer(
        height: 30,
        width: 30,
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: pressed
              ? const Color.fromARGB(255, 214, 223, 223).withOpacity(1.0)
              : const Color.fromARGB(255, 245, 246, 247).withOpacity(1.0),
        ),
        child: Icon(
          Icons.favorite,
          color: iconColor,
        ),
      ),
    );
  }
}
