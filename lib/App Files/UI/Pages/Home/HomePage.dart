import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:airtop/AllImports.dart';

import '../../Widgets/appBar/TopAppBar/topAppBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final ScrollController _scrollController = ScrollController();

    double screenWidth = MediaQuery.of(context).size.width;
    double screenHieght = MediaQuery.of(context).size.height;
    double containerWidth = screenWidth * 0.83;

    void scrollToTop() {
      _scrollController.animateTo(
        0.0, // Scroll to the top
        duration: Duration(milliseconds: 1),
        curve: Curves.easeInOut,
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Assets.pngLines),
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
          ),
          GestureDetector(
            onVerticalDragEnd: (details) {
              if (details.primaryVelocity! < 0) {
                // Swipe up
                scrollToTop();
              }
            },
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: Widths.width46,
                  ),
                  Center(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadii.borderRadius26All,
                        color: GeneralAppColors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3), // Shadow color
                            spreadRadius: 5, // Spread radius
                            blurRadius: 5, // Blur radius
                            offset: Offset(
                                0, 5), // Offset in the vertical direction
                          ),
                        ],
                      ),
                      height: screenHieght * 0.38,
                      width: containerWidth,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 4,
                            child: Transform.scale(
                              scale:
                                  1.5, // Adjust this value to increase size (e.g., 2.0 for double size)
                              child: SvgPicture.asset(
                                Assets.svgAirTopLogoBetterWhiteBackGround,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              S.of(context).onboardingPage2Text,
                              style: TextStyle(
                                fontSize: Fonts.sectionHeaderFontSize18,
                                fontFamily: Fonts.pageHeaderFontFamily,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHieght * 0.03,
                  ),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadii.borderRadius26All,
                        color: GeneralAppColors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3), // Shadow color
                            spreadRadius: 5, // Spread radius
                            blurRadius: 5, // Blur radius
                            offset: Offset(
                                0, 5), // Offset in the vertical direction
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Expanded(
                              child:
                                  Image.asset(Assets.pngYoomeeCleanTransformed),
                            ),
                            Expanded(
                              child: Image.asset(
                                  Assets.pngOrangelogoCleanTransformed),
                            ),
                            Expanded(
                              child: Image.asset(Assets.pngMtnLogoPng),
                            ),
                            Expanded(
                              child: Image.asset(Assets.pngNextelltransformed),
                            ),
                            Expanded(
                              child: Image.asset(
                                  Assets.pngCamtelLogopngFnaltransformed),
                            ),
                          ],
                        ),
                      ),
                      height: screenHieght * 0.13,
                      width: containerWidth,
                    ),
                  ),
                  SizedBox(
                    height: screenHieght * 0.042,
                  ),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadii.borderRadius26All,
                        color: GeneralAppColors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3), // Shadow color
                            spreadRadius: 5, // Spread radius
                            blurRadius: 5, // Blur radius
                            offset: Offset(
                                0, 5), // Offset in the vertical direction
                          ),
                        ],
                      ),
                      height: screenHieght * 0.12,
                      width: containerWidth,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Expanded(
                              child:
                                  Image.asset(Assets.pngMtnMomoLogoTransformed),
                            ),
                            Expanded(
                              child: Image.asset(
                                  Assets.pngOrangeMoneyLogoTransformed),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHieght * 0.036,
                  ),
                  Center(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(10, 15, 10, 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadii.borderRadius26All,
                        color: GeneralAppColors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3), // Shadow color
                            spreadRadius: 5, // Spread radius
                            blurRadius: 5, // Blur radius
                            offset: Offset(
                                0, 5), // Offset in the vertical direction
                          ),
                        ],
                      ),
                      height: screenHieght * 0.42,
                      width: containerWidth,
                      child: Column(
                        children: [
                          Expanded(
                              flex: 2,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: SvgPicture.asset(
                                        Assets.svgTrnasfersLogoBlueSpecial,
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                          Expanded(
                            flex: 2,
                            child: Column(
                              children: [
                                Text(
                                  S.of(context).onboardingPage2Text,
                                  style: TextStyle(
                                    fontSize: Fonts.sectionHeaderFontSize18,
                                    fontFamily: Fonts.pageHeaderFontFamily,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Divider(
                                  height: 0.5,
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Expanded(
                                      flex: 2,
                                      child: Container(
                                          child: Row(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: Text(
                                              'Just Click',
                                              style: TextStyle(
                                                  fontSize: 25,
                                                  color: GeneralAppColors
                                                      .blueSpecial),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                          Expanded(
                                              flex: 1,
                                              child: Image.asset(
                                                  Assets.pngClickIcon))
                                        ],
                                      ))),
                                  Expanded(
                                      flex: 4,
                                      child: Image.asset(
                                        Assets.pngArrowClockwiseCorrect,
                                        width: 400,
                                        height: 400,
                                      ))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHieght * 0.023,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      drawer: sideDrawer(),
    );
  }
}
