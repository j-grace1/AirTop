import 'package:flutter/material.dart';

class GeneralAppColors {
  // Black Text Colors

  static const Color white = Colors.white;
  static const Color blackDarker = Color.fromRGBO(16, 16, 16, 1);
  static const Color blackDark = Color.fromRGBO(32, 32, 32, 1);
  static const Color black = Color.fromRGBO(0, 0, 0, 1);
  static const Color blackLight = Color.fromRGBO(64, 64, 64, 1);
  static const Color blackLighter = Color.fromRGBO(128, 128, 128, 1);
  static const Color blackLightest = Color.fromRGBO(192, 192, 192, 1);

  // Grey Text Colors
  static const Color greyDarker = Color.fromRGBO(64, 64, 64, 1);
  static const Color greyDark = Color.fromRGBO(96, 96, 96, 1);
  static const Color grey = Color.fromRGBO(128, 128, 128, 1);
  static const Color greyLight = Color.fromRGBO(160, 160, 160, 1);
  static const Color greyLighter = Color.fromRGBO(192, 192, 192, 1);
  static const Color greyLightest = Color.fromRGBO(224, 224, 224, 1);

  // Blue Text Colors

  static const Color blueDarker = Color.fromRGBO(0, 0, 64, 1);
  static const Color blueDark = Color.fromRGBO(0, 0, 96, 1);
  static const Color blue = Color.fromRGBO(0, 0, 128, 1);
  static const Color blueLight = Color.fromRGBO(0, 0, 160, 1);
  static const Color blueLighter = Color.fromRGBO(0, 0, 192, 1);
  static const Color blueLightest = Color.fromRGBO(0, 0, 224, 1);
  static const Color blueExtraLight = Color.fromRGBO(64, 96, 255, 1);
  static const Color blueVeryLight = Color.fromRGBO(96, 128, 255, 1);
  static const Color blueUltraLight = Color.fromRGBO(128, 160, 255, 1);
  static const Color blueSuperLight = Color.fromRGBO(160, 192, 255, 1);
  static const Color blueSpecial = Color(0xFF2C3380);

  static const Color bottomBarBackgroundColor = Color(0xFF080B2B);

  static const Color midnightBlue = Color(0xFF080B2B);
  static const Color midnightBlueLight = Color(0xFF212855);
  static const Color midnightBlueLighter = Color(0xFF3A4C7E);
  static const Color midnightBlueLightest = Color(0xFF53609D);
  static const Color midnightBlueDark = Color(0xFF040723);
  static const Color midnightBlueDarker = Color(0xFF02041A);
  static const Color midnightBlueDarkest = Color(0xFF00040D);
  static const Color midnightBlueFaded = Color(0xFF0D122E);
  static const Color midnightBlueTransparent = Color(0x33080B2B);
  static const Color midnightBlueSemiTransparent = Color(0x7F080B2B);
  // Button Background Colors
  static const Color buttonBackgroundColor = Color(0xff183883);
  // Filter Colors
  static const Color filterColors = Color.fromRGBO(15, 1, 1, 0.8);

  // Splash Screen Colors
  static const Color splashScreenColors = Color(0xFFFFA500);

  // Bottom Tab Bar Selection Color
  static const Color bottomTabBarSelectionColor = Color(0xFFFF0000);

  // Container Box Colors
  static const Color containerBoxBackgroundColors = Color(0xD9D9D94C);

  static const Color greyFilter100 = Color.fromRGBO(217, 217, 217, 0.8);
  static const Color greyFilter90 = Color.fromRGBO(217, 217, 217, 0.9);
  static const Color greyFilter80 = Color.fromRGBO(217, 217, 217, 0.8);
  static const Color greyFilter70 = Color.fromRGBO(217, 217, 217, 0.7);
  static const Color greyFilter60 = Color.fromRGBO(217, 217, 217, 0.6);
  static const Color greyFilter50 = Color.fromRGBO(217, 217, 217, 0.5);
  static const Color greyFilter40 = Color.fromRGBO(217, 217, 217, 0.4);
  static const Color greyFilter30 = Color.fromRGBO(217, 217, 217, 0.3);
  static const Color greyFilter20 = Color.fromRGBO(217, 217, 217, 0.2);
  static const Color greyFilter10 = Color.fromRGBO(217, 217, 217, 0.1);

  // Status Colors
  static const Color statusColors = Color(0xFF008000);

  // Filter Colors
  static const Color filterColors90 = Color.fromRGBO(15, 1, 1, 0.9);
  static const Color filterColors80 = Color.fromRGBO(15, 1, 1, 0.8);
  static const Color filterColors70 = Color.fromRGBO(15, 1, 1, 0.7);
  static const Color filterColors60 = Color.fromRGBO(15, 1, 1, 0.6);
  static const Color filterColors50 = Color.fromRGBO(15, 1, 1, 0.5);
  static const Color filterColors40 = Color.fromRGBO(15, 1, 1, 0.4);
  static const Color filterColors30 = Color.fromRGBO(15, 1, 1, 0.3);
  static const Color filterColors20 = Color.fromRGBO(15, 1, 1, 0.2);
  static const Color filterColors10 = Color.fromRGBO(15, 1, 1, 0.1);
  static const Color filterColors0 = Color.fromRGBO(15, 1, 1, 0);

  // Adding blur effects
  static const Color filterColorsBlur10 = Color(0x1A0F0101);
  static const Color filterColorsBlur20 = Color(0x330F0101);
  static const Color filterColorsBlur30 = Color(0x4D0F0101);
  static const Color filterColorsBlur40 = Color(0x660F0101);
  static const Color filterColorsBlur50 = Color(0x800F0101);
  static const Color filterColorsBlur60 = Color(0x990F0101);
  static const Color filterColorsBlur70 = Color(0xB30F0101);
  static const Color filterColorsBlur80 = Color(0xCC0F0101);
  static const Color filterColorsBlur90 = Color(0xE60F0101);
  static const Color filterColorsBlur100 = Color(0xFF0F0101);

  //Gradients
  static const LinearGradient splashScreengradient = LinearGradient(
      colors: [Color(0xFF008000), Color(0xFF808080)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight);
  final LinearGradient gradient1 = LinearGradient(
    begin: Alignment(0.14731132984161377, 0.7764798402786255),
    end: Alignment(-0.7764798402786255, 0.6923572421073914),
    colors: [Color.fromRGBO(45, 54, 113, 1), Color.fromRGBO(49, 37, 192, 0)],
  );

  final LinearGradient gradient2 = LinearGradient(
    begin: Alignment(-0.3579110256236855, -0.977194480052708),
    end: Alignment(0.39659655816160584, 0.5445162610006705),
    colors: [Color.fromRGBO(115, 20, 51, 1), Color.fromRGBO(209, 72, 65, 0)],
  );

  final LinearGradient gradient3 = LinearGradient(
    begin: Alignment(-0.8202559723283729, -0.05454105773900986),
    end: Alignment(0.24934577132480415, 1.0824771393288276),
    colors: [Color.fromRGBO(87, 21, 68, 1), Color.fromRGBO(196, 30, 64, 0)],
  );
}
