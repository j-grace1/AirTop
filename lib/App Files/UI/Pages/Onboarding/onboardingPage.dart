import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:airtop/AllImports.dart';

import '../../Animations/svgAnimation/svgAnimation.dart';

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage>
    with SingleTickerProviderStateMixin {
  String selectedLanguage = 'English'; // Selected language variable

  void handleLanguageChanged(String? newValue) {
    setState(() {
      selectedLanguage = newValue ?? '';
    });
  }

  int currentPage = 0;
  List<String> onboardingTexts = [];
  List<String> svgPaths = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    onboardingTexts = [
      S.of(context).onboardingPage1Text,
      S.of(context).onboardingPage2Text,
      S.of(context).onboardingPage3Text,
    ];
    svgPaths = [
      Assets.svgTrnasfersLogoBlueSpecial,
      Assets.svgTrnasfersLogoBlueSpecial,
      Assets.svgTrnasfersLogoBlueSpecial,
    ];
  }

  void goToNextPage() {
    if (currentPage < onboardingTexts.length - 1) {
      setState(() {
        currentPage++;
      });
    } else {
      // Execute a different function to navigate to a new page
      // e.g., Navigator.push(...)
    }
  }

  void goToPreviousPage() {
    if (currentPage > 0) {
      setState(() {
        currentPage--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GeneralAppColors.blueSpecial,
      body: Container(
        width: double.infinity,
        child: Stack(
          children: [
            Column(
              children: [
                _buildExpandedLogoSection(),
                _buildExpandedContentSection(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExpandedLogoSection() {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.pngLines),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.1),
              BlendMode.darken,
            ),
          ),
        ),
        padding: EdgeInsets.zero,
        child: Center(
          child: Center(
            child: SvgAnimation(
              svgPath: Assets.svgAirTopLogoBetterWhiteBackGround,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildExpandedContentSection() {
    final isLastPage = currentPage == onboardingTexts.length - 1;

    return Expanded(
      flex: 2,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadii.borderRadius40Top,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.7),
              offset: Offset(0, 2),
              blurRadius: 10,
              spreadRadius: 5,
            ),
            BoxShadow(
              color: Colors.black.withOpacity(1),
              offset: Offset(0, 0),
              blurRadius: 10,
              spreadRadius: -50,
            ),
          ],
          color: ContainerColors.containerBackgroundColorWhite,
        ),
        child: GestureDetector(
          onHorizontalDragEnd: (DragEndDetails details) {
            if (details.primaryVelocity == 0) return; // no swipe

            if (details.primaryVelocity!.compareTo(0) == -1) {
              // Swiped from left to right (previous page)
              goToNextPage();
            } else {
              // Swiped from right to left (next page)

              goToPreviousPage();
            }
          },
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: SvgImage(
                          svgPath: svgPaths[currentPage],
                          width: Widths.width180,
                          height: Widths.width180,
                        ),
                      ),
                      Container(
                        width: Widths.width400,
                        height: Widths.width200,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 40, 0, 30),
                          child: Text(
                            onboardingTexts[currentPage],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: Fonts.sectionHeaderFontSize18,
                              fontFamily: Fonts.pageHeaderFontFamily,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            onboardingTexts.length,
                            (index) => Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: CircleAvatar(
                                  radius: 5,
                                  backgroundColor: index == currentPage
                                      ? GeneralAppColors.blueSpecial
                                      : GeneralAppColors.filterColors20),
                            ),
                          ),
                        ),
                      ),
                      if (!isLastPage)
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: ListTile(
                            leading: CustomButton(
                              text: Text(
                                S.of(context).onboardingButtonSkip,
                                style: TextStyle(
                                  fontSize: Fonts.sectionHeaderFontSize18,
                                  fontFamily: Fonts.pageHeaderFontFamily,
                                ),
                              ),
                              borderRadius: Widths.width10,
                              width: Widths.width84,
                              backgroundColor: GeneralAppColors.blueSpecial,
                              buttonSize: 'small',
                              onPressed: () {
                                // Button pressed callback
                              },
                            ),
                            trailing: CustomButton(
                              text: Text(
                                S.of(context).onboardingButtonNext,
                                style: TextStyle(
                                  fontSize: Fonts.sectionHeaderFontSize18,
                                  fontFamily: Fonts.pageHeaderFontFamily,
                                ),
                              ),
                              borderRadius: Widths.width10,
                              width: Widths.width84,
                              backgroundColor: GeneralAppColors.blueSpecial,
                              buttonSize: 'small',
                              onPressed: goToNextPage,
                            ),
                          ),
                        ),
                      if (isLastPage)
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: ListTile(
                            trailing: CustomButton(
                              text: Text(
                                S.of(context).onboardingButtonFinish,
                                style: TextStyle(
                                  fontSize: Fonts.sectionHeaderFontSize18,
                                  fontFamily: Fonts.pageHeaderFontFamily,
                                ),
                              ),
                              borderRadius: Widths.width10,
                              width: Widths.width84,
                              backgroundColor: GeneralAppColors.blueSpecial,
                              buttonSize: 'small',
                              onPressed: () {
                                // Execute a different function to navigate to a new page
                                // e.g., Navigator.push(...)
                              },
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
