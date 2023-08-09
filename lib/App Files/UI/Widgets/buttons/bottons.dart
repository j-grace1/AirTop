import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Text text;
  final double borderRadius;
  final double width;
  final Color backgroundColor;
  final String buttonSize;
  final VoidCallback? onPressed;
  const CustomButton(
      {required this.text,
      required this.borderRadius,
      required this.width,
      required this.backgroundColor,
      required this.buttonSize,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    double height;
    double fontsize;

    switch (buttonSize) {
      case 'small':
        height = 40;
        fontsize = 16;
        break;
      case 'medium':
        height = 50;
        fontsize = 16;
        break;
      case 'large':
        height = 60;
        fontsize = 16;
        break;
      default:
        height = 50;
        fontsize = 18;
        break;
    }

    return Container(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius))),
        child: text,
      ),
    );

    return const Placeholder();
  }
}
