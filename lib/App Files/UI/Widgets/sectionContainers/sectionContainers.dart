import 'package:flutter/material.dart';

class SectionContainer extends StatelessWidget {
  final double width;
  final double borderRadius;
  final Color backgroundColor;
  final EdgeInsets padding;
  final EdgeInsets contentPadding;
  final List<Widget> children;

  const SectionContainer({
    required this.width,
    required this.borderRadius,
    required this.backgroundColor,
    required this.padding,
    required this.contentPadding,
    this.children = const [],
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: contentPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: children,
            ),
          ),
        ],
      ),
    );
  }
}
