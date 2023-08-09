import 'package:flutter/material.dart';

class DropdownContainer extends StatelessWidget {
  final EdgeInsets padding;
  final double width;
  final Color backgroundColor;
  final List<Widget> children;
  const DropdownContainer(
      {required this.width,
      required this.padding,
      required this.backgroundColor,
      this.children = const []});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(color: backgroundColor, boxShadow: [
        BoxShadow(
          color: Colors.black26,
          offset: Offset(0, 2),
          blurRadius: 6.0,
        ),
      ]),
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }
}
