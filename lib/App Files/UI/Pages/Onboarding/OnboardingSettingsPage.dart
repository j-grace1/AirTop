import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../const/dimensions/generalDimensions/borderRadii/borderRadii.dart';
import '../../../../const/dimensions/generalDimensions/widths/widths.dart';
import '../../../../const/styles/colors/containers/containerColors.dart';
import '../../../../const/styles/fonts/fonts.dart';
import '../../../../generated/assets.dart';
import 'package:airtop/generated/l10n.dart';

import '../../../../const/styles/colors/appGeneralColours/generalAppColors.dart';
import '../../Animations/svgAnimation/svgAnimation.dart';
import '../../Widgets/buttons/bottons.dart';
import '../../Widgets/dropDown/LanguageSettingsDropDown/languageSettingDropDown.dart';

class OnboardingLanguageSettingsPage extends StatefulWidget {
  @override
  _OnboardingLanguageSettingsPageState createState() =>
      _OnboardingLanguageSettingsPageState();
}

class _OnboardingLanguageSettingsPageState
    extends State<OnboardingLanguageSettingsPage>
    with SingleTickerProviderStateMixin {
  String selectedLanguage = 'English'; // Selected language variable

  void handleLanguageChanged(String? newValue) {
    setState(() {
      selectedLanguage = newValue ?? '';
    });
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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Text(
                        S.of(context).onboardingLanguageSettingText1,
                        style: TextStyle(
                          fontSize: Fonts.sectionHeaderFontSize18,
                          fontFamily: Fonts.pageHeaderFontFamily,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: GeneralAppColors.greyFilter50,
                        ),
                        child: ListTile(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          tileColor: Colors.black,
                          leading: CircleAvatar(
                            backgroundColor: GeneralAppColors.blueSpecial,
                            child: Icon(
                              Icons.language,
                              color: Colors.white,
                            ),
                            radius: 30,
                          ),
                          title: Text(
                            'Language',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          trailing: LanguageDropdown(
                            value: selectedLanguage,
                            onChanged: handleLanguageChanged,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Text(
                        S.of(context).onboardingLanguageSettingText2,
                        style: TextStyle(
                          fontSize: Fonts.sectionHeaderFontSize18,
                          fontFamily: Fonts.pageHeaderFontFamily,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: ListTile(
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
                          backgroundColor: GeneralAppColors
                              .blueSpecial, // Set the background color here
                          buttonSize: 'small',
                          onPressed: () {
                            // Button pressed callback
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
    );
  }
}
