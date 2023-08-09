import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:airtop/AllImports.dart';

class AirTopAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AirTopAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: AppBar(
          backgroundColor: GeneralAppColors.greyLightest,
          leadingWidth: 150,
          leading: Container(
            padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
            child: Transform.scale(
              scale:
                  3.9, // Adjust this value to increase size (e.g., 2.0 for double size)
              child: SvgPicture.asset(
                Assets.svgAirTopLogoBetterWhiteBackGround,
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.menu_rounded,
                    size: 60,
                    color: GeneralAppColors.blueSpecial,
                  )),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(70);
}
