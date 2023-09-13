import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:airtop/AllImports.dart';

class AppGradients {
  static const LinearGradient splashScreengradient = LinearGradient(
      colors: [Colors.white, Colors.white],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight);
  static const LinearGradient blueLight = LinearGradient(
      colors: [Color.fromRGBO(2, 6, 31, 1.0), Color.fromRGBO(49, 37, 192, 0)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight);

  static const LinearGradient gradient2 = LinearGradient(
    begin: Alignment(-0.3579110256236855, -0.977194480052708),
    end: Alignment(0.39659655816160584, 0.5445162610006705),
    colors: [Color.fromRGBO(115, 20, 51, 1), Color.fromRGBO(209, 72, 65, 0)],
  );

  static const LinearGradient gradient3 = LinearGradient(
    begin: Alignment(-0.8202559723283729, -0.05454105773900986),
    end: Alignment(0.24934577132480415, 1.0824771393288276),
    colors: [Color.fromRGBO(87, 21, 68, 1), Color.fromRGBO(196, 30, 64, 0)],
  );

  static const LinearGradient gradient4 = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      GeneralAppColors.blueLight,
      Colors.white,
      Colors.blue,
    ],
    stops: [
      0.0,
      0.5,
      1.0,
    ],
  );
}
