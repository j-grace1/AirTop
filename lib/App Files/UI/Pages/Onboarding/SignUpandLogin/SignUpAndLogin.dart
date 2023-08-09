import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:airtop/AllImports.dart';

import '../../../Animations/svgAnimation/svgAnimation.dart';

class SignUpandLoginPage extends StatefulWidget {
  @override
  _SignUpandLoginPageState createState() => _SignUpandLoginPageState();
}

class _SignUpandLoginPageState extends State<SignUpandLoginPage>
    with TickerProviderStateMixin {
  String selectedLanguage = 'English';
  // Selected language variable
  late AnimationController animationController1;
  late AnimationController animationController2;

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
        height: double.infinity,
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
    // Define the tab controller
    final TabController tabController = TabController(length: 2, vsync: this);

    return Expanded(
      flex: 2,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
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
          color: Colors.white,
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TabBar(
                  controller: tabController,
                  indicatorColor: Colors.blue.shade900,
                  indicatorWeight: 3.5,
                  tabs: [
                    Tab(
                      child: Text(
                        S.of(context).loginTextLogin,
                        style: TextStyle(
                          color: GeneralAppColors.blueSpecial,
                          fontSize: Fonts.sectionHeaderFontSize17,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        S.of(context).signupTextSignUp,
                        style: TextStyle(
                            color: GeneralAppColors.blueSpecial,
                            fontSize: Fonts.sectionHeaderFontSize17),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 450,
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      SingleChildScrollView(
                          child: LoginBuilderWidget(
                        tabController: tabController,
                      )),
                      SingleChildScrollView(
                        child: SignupBuilderWidget(
                          tabController: tabController,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LoginBuilderWidget extends StatefulWidget {
  final TabController tabController;

  LoginBuilderWidget({required this.tabController});

  @override
  _LoginBuilderWidgetState createState() => _LoginBuilderWidgetState();
}

class _LoginBuilderWidgetState extends State<LoginBuilderWidget> {
  get click => null;
  bool isSwitched = false; // Variable to store the state of the switch

  void toggleSwitch(bool value) {
    setState(() {
      isSwitched = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Please Login to Your Account",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
            ),
          ),

          const SizedBox(
            height: 20,
          ),
          Container(
            width: 290,
            height: 60,
            child: const TextField(
              decoration: InputDecoration(
                  suffix: Icon(
                    FontAwesomeIcons.envelope,
                    color: GeneralAppColors.blueSpecial,
                  ),
                  labelText: "Email Address",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  )),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            width: 290,
            height: 60,
            child: const TextField(
              obscureText: true,
              decoration: InputDecoration(
                  suffix: Icon(
                    FontAwesomeIcons.eyeSlash,
                    color: GeneralAppColors.blueSpecial,
                  ),
                  labelText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 39, 0, 0),
            child: SingleChildScrollView(
              child: Row(
                children: [
                  Switch(
                    value: isSwitched,
                    onChanged: toggleSwitch,
                    activeColor: GeneralAppColors.blueSpecial,
                    inactiveThumbColor: GeneralAppColors.grey,
                    inactiveTrackColor: GeneralAppColors.grey.withOpacity(0.5),
                  ),
                  TextButton(
                    onPressed: click,
                    child: Text(
                      S.of(context).loginTextRememberMe,
                      style: TextStyle(
                        color: GeneralAppColors.blueSpecial,
                        fontSize: Fonts.sectionHeaderFontSize14,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  TextButton(
                    onPressed: click,
                    child: Text(
                      S.of(context).loginTextForgotPassword,
                      style: TextStyle(
                        color: GeneralAppColors.blueSpecial,
                        fontSize: Fonts.sectionHeaderFontSize14,
                      ),
                      textAlign: TextAlign.end,
                    ),
                  )
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  GeneralAppColors.blueSpecial),
            ),
            child: Container(
              alignment: Alignment.center,
              width: 250,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: Fonts.sectionHeaderFontSize16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 17,
          ),
          GestureDetector(
            onTap: () {
              // Add the tab switching logic here
              widget.tabController.animateTo(1); // Switch to the second tab
            },
            child: Text(
              S.of(context).loginTextDontHaveAccount,
              style: TextStyle(
                color: GeneralAppColors.blueSpecial,
                fontSize: Fonts.sectionHeaderFontSize15,
              ),
            ),
          ),
          Divider(
            color: GeneralAppColors.blueSpecial,
            height: 30,
          ),
          const SizedBox(
            height: 6,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  GeneralAppColors.blueSpecial),
            ),
            child: Container(
              alignment: Alignment.center,
              width: 250,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Padding(
                padding: EdgeInsets.all(2.0),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                          color: GeneralAppColors.white),
                      child: SvgPicture.asset(
                        Assets.svgGoogleSvg,
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Login with Google',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: Fonts.sectionHeaderFontSize15,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),
          // Add your login form components here
        ],
      ),
    );
  }
}

class SignupBuilderWidget extends StatefulWidget {
  final TabController tabController;

  SignupBuilderWidget({required this.tabController});

  @override
  _SignupBuilderWidgetState createState() => _SignupBuilderWidgetState();
}

class _SignupBuilderWidgetState extends State<SignupBuilderWidget> {
  get click => null;
  bool isSwitched = false; // Variable to store the state of the switch

  void toggleSwitch(bool value) {
    setState(() {
      isSwitched = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            S.of(context).signUpTextPleaseCreateanAccountIfYouDontHaveOne,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
            ),
          ),

          const SizedBox(
            height: 20,
          ),
          Container(
            width: 290,
            height: 60,
            child: const TextField(
              decoration: InputDecoration(
                  suffix: Icon(
                    FontAwesomeIcons.envelope,
                    color: GeneralAppColors.blueSpecial,
                  ),
                  labelText: "Email Address",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  )),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            width: 290,
            height: 60,
            child: const TextField(
              obscureText: true,
              decoration: InputDecoration(
                  suffix: Icon(
                    FontAwesomeIcons.eyeSlash,
                    color: GeneralAppColors.blueSpecial,
                  ),
                  labelText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  )),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            width: 290,
            height: 60,
            child: const TextField(
              obscureText: true,
              decoration: InputDecoration(
                  suffix: Icon(
                    FontAwesomeIcons.eyeSlash,
                    color: GeneralAppColors.blueSpecial,
                  ),
                  labelText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  )),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  GeneralAppColors.blueSpecial),
            ),
            child: Container(
              alignment: Alignment.center,
              width: 250,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  'SignUp',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: Fonts.sectionHeaderFontSize16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              // Add the tab switching logic here
              widget.tabController.animateTo(0); // Switch to the first tab
            },
            child: Text(
              S.of(context).signUpTextDontHaveAccount,
              style: TextStyle(
                color: GeneralAppColors.blueSpecial,
                fontSize: Fonts.sectionHeaderFontSize15,
              ),
            ),
          ),
          Divider(
            color: GeneralAppColors.blueSpecial,
            height: 30,
          ),
          const SizedBox(
            height: 6,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  GeneralAppColors.blueSpecial),
            ),
            child: Container(
              alignment: Alignment.center,
              width: 250,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Padding(
                padding: EdgeInsets.all(2.0),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(0)),
                          color: GeneralAppColors.white),
                      child: SvgPicture.asset(
                        Assets.svgGoogleSvg,
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      S.of(context).signUpTextSignUpWithGoogle,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: Fonts.sectionHeaderFontSize15,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          ),
          // Add your login form components here
        ],
      ),
    );
  }
}

class SocialMedia extends StatelessWidget {
  const SocialMedia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(Icons.facebook),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginApp extends StatelessWidget {
  void click() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Colors.purpleAccent,
                Colors.amber,
                Colors.blue,
              ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 200,
                width: 300,
                child: LottieBuilder.asset("assets/lottie/login2.json"),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 325,
                height: 470,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      S.of(context).loginTextPleaseLoginToYourAccount,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 260,
                      height: 60,
                      child: const TextField(
                        decoration: InputDecoration(
                            suffix: Icon(
                              FontAwesomeIcons.envelope,
                              color: Colors.red,
                            ),
                            labelText: "Email Address",
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      width: 260,
                      height: 60,
                      child: const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            suffix: Icon(
                              FontAwesomeIcons.eyeSlash,
                              color: Colors.red,
                            ),
                            labelText: "Password",
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 30, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: click,
                            child: const Text(
                              "Forget Password",
                              style: TextStyle(color: Colors.deepOrange),
                            ),
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      child: Container(
                        alignment: Alignment.center,
                        width: 250,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xFF8A2387),
                                  Color(0xFFE94057),
                                  Color(0xFFF27121),
                                ])),
                        child: const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 17,
                    ),
                    const Text(
                      "Or Login using Social Media Account",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                            onPressed: click,
                            icon: const Icon(FontAwesomeIcons.facebook,
                                color: Colors.blue)),
                        IconButton(
                            onPressed: click,
                            icon: const Icon(
                              FontAwesomeIcons.google,
                              color: Colors.redAccent,
                            )),
                        IconButton(
                            onPressed: click,
                            icon: const Icon(
                              FontAwesomeIcons.twitter,
                              color: Colors.orangeAccent,
                            )),
                        IconButton(
                            onPressed: click,
                            icon: const Icon(
                              FontAwesomeIcons.linkedinIn,
                              color: Colors.green,
                            ))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
