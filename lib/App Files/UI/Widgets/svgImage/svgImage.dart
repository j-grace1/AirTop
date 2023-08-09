import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgImage extends StatelessWidget {
  final String svgPath;
  final double width;
  final double height;

  const SvgImage({
    required this.svgPath,
    this.width = double.infinity,
    this.height = double.infinity,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      svgPath,
      width: width,
      height: height,
      // You can customize other properties of SvgPicture.asset here
    );
  }
}
