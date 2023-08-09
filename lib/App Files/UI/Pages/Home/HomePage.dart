import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:airtop/AllImports.dart';

import '../../Animations/svgAnimation/svgAnimation.dart';
import '../../Widgets/appBar/TopAppBar/topAppBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHieght = MediaQuery.of(context).size.height;
    double containerWidth = screenWidth * 0.82;

    return Scaffold(
      appBar: AirTopAppBar(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: Widths.width62,
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadii.borderRadius26All,
                      color: ContainerColors.containerBackgroundColor50),
                  height: screenHieght * 0.35,
                  width: containerWidth,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Positioned(
                          top: 200,
                          child: SvgAnimation(
                            svgPath: Assets.svgAirTopLogoBetterWhiteBackGround,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          S.of(context).onboardingLanguageSettingText1,
                          style: TextStyle(
                            fontSize: Fonts.sectionHeaderFontSize18,
                            fontFamily: Fonts.pageHeaderFontFamily,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: screenHieght * 0.06,
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadii.borderRadius26All,
                      color: ContainerColors.containerBackgroundColor50),
                  height: screenHieght * 0.1,
                  width: containerWidth,
                ),
              ),
              SizedBox(
                height: screenHieght * 0.04,
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadii.borderRadius26All,
                      color: ContainerColors.containerBackgroundColor50),
                  height: screenHieght * 0.1,
                  width: containerWidth,
                ),
              ),
              SizedBox(
                height: screenHieght * 0.04,
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadii.borderRadius26All,
                      color: ContainerColors.containerBackgroundColor50),
                  height: screenHieght * 0.35,
                  width: containerWidth,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
