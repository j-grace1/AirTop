// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome to AirTop! Please select your preferred language to continue.`
  String get onboardingLanguageSettingText1 {
    return Intl.message(
      'Welcome to AirTop! Please select your preferred language to continue.',
      name: 'onboardingLanguageSettingText1',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get onboardingLanguageSettingTextLanguageType {
    return Intl.message(
      'English',
      name: 'onboardingLanguageSettingTextLanguageType',
      desc: '',
      args: [],
    );
  }

  /// `Choose your preferred language for a personalized app experience. We prioritize inclusivity and aim to provide a seamless user interface in your preferred language.\n\nYou can always modify the language settings later in the app's settings menu.`
  String get onboardingLanguageSettingText2 {
    return Intl.message(
      'Choose your preferred language for a personalized app experience. We prioritize inclusivity and aim to provide a seamless user interface in your preferred language.\n\nYou can always modify the language settings later in the app\'s settings menu.',
      name: 'onboardingLanguageSettingText2',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get onboardingButtonNext {
    return Intl.message(
      'Next',
      name: 'onboardingButtonNext',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get onboardingButtonSkip {
    return Intl.message(
      'Skip',
      name: 'onboardingButtonSkip',
      desc: '',
      args: [],
    );
  }

  /// `Finish`
  String get onboardingButtonFinish {
    return Intl.message(
      'Finish',
      name: 'onboardingButtonFinish',
      desc: '',
      args: [],
    );
  }

  /// `Buy airtime with a few taps. Stay connected hassle-free, anytime, anywhere.`
  String get onboardingPage1Text {
    return Intl.message(
      'Buy airtime with a few taps. Stay connected hassle-free, anytime, anywhere.',
      name: 'onboardingPage1Text',
      desc: '',
      args: [],
    );
  }

  /// `Just with an SMS bundle buy Airtime, from your Mobile and Orange Money wallets. Stay connected even without an internet connection.`
  String get onboardingPage2Text {
    return Intl.message(
      'Just with an SMS bundle buy Airtime, from your Mobile and Orange Money wallets. Stay connected even without an internet connection.',
      name: 'onboardingPage2Text',
      desc: '',
      args: [],
    );
  }

  /// `Send money to friends and family cheaply and effortlessly. Transfer funds securely within seconds.`
  String get onboardingPage3Text {
    return Intl.message(
      'Send money to friends and family cheaply and effortlessly. Transfer funds securely within seconds.',
      name: 'onboardingPage3Text',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get loginTextLogin {
    return Intl.message(
      'Login',
      name: 'loginTextLogin',
      desc: '',
      args: [],
    );
  }

  /// `SignUp`
  String get signupTextSignUp {
    return Intl.message(
      'SignUp',
      name: 'signupTextSignUp',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get loginTextEmail {
    return Intl.message(
      'Email',
      name: 'loginTextEmail',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get loginTextPassword {
    return Intl.message(
      'Password',
      name: 'loginTextPassword',
      desc: '',
      args: [],
    );
  }

  /// `Remember Me`
  String get loginTextRememberMe {
    return Intl.message(
      'Remember Me',
      name: 'loginTextRememberMe',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password`
  String get loginTextForgotPassword {
    return Intl.message(
      'Forgot Password',
      name: 'loginTextForgotPassword',
      desc: '',
      args: [],
    );
  }

  /// ` Login with Google`
  String get loginTextLoginWithGoogle {
    return Intl.message(
      ' Login with Google',
      name: 'loginTextLoginWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `SignUp with Google`
  String get signUpTextSignUpWithGoogle {
    return Intl.message(
      'SignUp with Google',
      name: 'signUpTextSignUpWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Please Login to Your Account`
  String get loginTextPleaseLoginToYourAccount {
    return Intl.message(
      'Please Login to Your Account',
      name: 'loginTextPleaseLoginToYourAccount',
      desc: '',
      args: [],
    );
  }

  /// `Online`
  String get statusOnline {
    return Intl.message(
      'Online',
      name: 'statusOnline',
      desc: '',
      args: [],
    );
  }

  /// `Offline`
  String get statusOffline {
    return Intl.message(
      'Offline',
      name: 'statusOffline',
      desc: '',
      args: [],
    );
  }

  /// `Please create an account if you don't have one`
  String get signUpTextPleaseCreateanAccountIfYouDontHaveOne {
    return Intl.message(
      'Please create an account if you don\'t have one',
      name: 'signUpTextPleaseCreateanAccountIfYouDontHaveOne',
      desc: '',
      args: [],
    );
  }

  /// `Don’t have an Account? Register Here`
  String get loginTextDontHaveAccount {
    return Intl.message(
      'Don’t have an Account? Register Here',
      name: 'loginTextDontHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Already have an Account? Login Here`
  String get signUpTextDontHaveAccount {
    return Intl.message(
      'Already have an Account? Login Here',
      name: 'signUpTextDontHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `ngwaemmanuel@gmail.com`
  String get emailPlaceHolderText {
    return Intl.message(
      'ngwaemmanuel@gmail.com',
      name: 'emailPlaceHolderText',
      desc: '',
      args: [],
    );
  }

  /// `Buy Airtime`
  String get homepageTextBuyAirTime {
    return Intl.message(
      'Buy Airtime',
      name: 'homepageTextBuyAirTime',
      desc: '',
      args: [],
    );
  }

  /// `Transfer Money`
  String get homepageTextTransferMoney {
    return Intl.message(
      'Transfer Money',
      name: 'homepageTextTransferMoney',
      desc: '',
      args: [],
    );
  }

  /// `Buy an SMS bundle. Then you can buy Airtime at any time, anywhere, both online and offline.`
  String get homepageTextHelp {
    return Intl.message(
      'Buy an SMS bundle. Then you can buy Airtime at any time, anywhere, both online and offline.',
      name: 'homepageTextHelp',
      desc: '',
      args: [],
    );
  }

  /// `Want to know more???`
  String get homepageTextHelpLink {
    return Intl.message(
      'Want to know more???',
      name: 'homepageTextHelpLink',
      desc: '',
      args: [],
    );
  }

  /// `History`
  String get bottomTabBarTitleHistory {
    return Intl.message(
      'History',
      name: 'bottomTabBarTitleHistory',
      desc: '',
      args: [],
    );
  }

  /// `Transaction`
  String get bottomTabBarTitleTransaction {
    return Intl.message(
      'Transaction',
      name: 'bottomTabBarTitleTransaction',
      desc: '',
      args: [],
    );
  }

  /// `FAQs`
  String get hamburgerMenuTitleFAQ {
    return Intl.message(
      'FAQs',
      name: 'hamburgerMenuTitleFAQ',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get hamburgerMenuTitleSettings {
    return Intl.message(
      'Settings',
      name: 'hamburgerMenuTitleSettings',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get hamburgerMenuTitleAbout {
    return Intl.message(
      'About',
      name: 'hamburgerMenuTitleAbout',
      desc: '',
      args: [],
    );
  }

  /// `Contact Us`
  String get hamburgerMenuTitleContact {
    return Intl.message(
      'Contact Us',
      name: 'hamburgerMenuTitleContact',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get sideMenuTextProfile {
    return Intl.message(
      'Profile',
      name: 'sideMenuTextProfile',
      desc: '',
      args: [],
    );
  }

  /// `Help`
  String get sideMenuTextHelp {
    return Intl.message(
      'Help',
      name: 'sideMenuTextHelp',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get sideMenuTextSettings {
    return Intl.message(
      'Settings',
      name: 'sideMenuTextSettings',
      desc: '',
      args: [],
    );
  }

  /// `Terms and Conditions`
  String get sideMenuTextTerms {
    return Intl.message(
      'Terms and Conditions',
      name: 'sideMenuTextTerms',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get sideMenuTextLogout {
    return Intl.message(
      'Logout',
      name: 'sideMenuTextLogout',
      desc: '',
      args: [],
    );
  }

  /// `Airtime`
  String get transactionPageTabHeaderAirtime {
    return Intl.message(
      'Airtime',
      name: 'transactionPageTabHeaderAirtime',
      desc: '',
      args: [],
    );
  }

  /// `Transfer`
  String get transactionPageTabHeaderTransfer {
    return Intl.message(
      'Transfer',
      name: 'transactionPageTabHeaderTransfer',
      desc: '',
      args: [],
    );
  }

  /// `Airtime transfer details`
  String get transactionPageTabTitleAirtime {
    return Intl.message(
      'Airtime transfer details',
      name: 'transactionPageTabTitleAirtime',
      desc: '',
      args: [],
    );
  }

  /// `Money Transfer details`
  String get transactionPageTabTitleTransfer {
    return Intl.message(
      'Money Transfer details',
      name: 'transactionPageTabTitleTransfer',
      desc: '',
      args: [],
    );
  }

  /// `SMS Number`
  String get transactionPageTextSMSNumber {
    return Intl.message(
      'SMS Number',
      name: 'transactionPageTextSMSNumber',
      desc: '',
      args: [],
    );
  }

  /// `Receiver's number`
  String get transactionPageTextReciepient {
    return Intl.message(
      'Receiver\'s number',
      name: 'transactionPageTextReciepient',
      desc: '',
      args: [],
    );
  }

  /// `Amount`
  String get transactionPageTextAmount {
    return Intl.message(
      'Amount',
      name: 'transactionPageTextAmount',
      desc: '',
      args: [],
    );
  }

  /// `Franc CFA`
  String get transactionPageTextAmountCurrencyFCFA {
    return Intl.message(
      'Franc CFA',
      name: 'transactionPageTextAmountCurrencyFCFA',
      desc: '',
      args: [],
    );
  }

  /// `Payer's Phone number`
  String get transactionPageTextPayer {
    return Intl.message(
      'Payer\'s Phone number',
      name: 'transactionPageTextPayer',
      desc: '',
      args: [],
    );
  }

  /// `Buy Airtime`
  String get transactionPageButtonTextAirtime {
    return Intl.message(
      'Buy Airtime',
      name: 'transactionPageButtonTextAirtime',
      desc: '',
      args: [],
    );
  }

  /// `Transfer`
  String get transactionPageButtonTextTransfer {
    return Intl.message(
      'Transfer',
      name: 'transactionPageButtonTextTransfer',
      desc: '',
      args: [],
    );
  }

  /// `Sender's number`
  String get transactionPageTextSenderNumber {
    return Intl.message(
      'Sender\'s number',
      name: 'transactionPageTextSenderNumber',
      desc: '',
      args: [],
    );
  }

  /// `Receiver's Account Number`
  String get transactionPageTextRecieverAccontNumber {
    return Intl.message(
      'Receiver\'s Account Number',
      name: 'transactionPageTextRecieverAccontNumber',
      desc: '',
      args: [],
    );
  }

  /// `Transaction History`
  String get transactionHistoryPageHeader {
    return Intl.message(
      'Transaction History',
      name: 'transactionHistoryPageHeader',
      desc: '',
      args: [],
    );
  }

  /// `Filter`
  String get transactionHistoryPageButtonFilter {
    return Intl.message(
      'Filter',
      name: 'transactionHistoryPageButtonFilter',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profilePageTextHeader {
    return Intl.message(
      'Profile',
      name: 'profilePageTextHeader',
      desc: '',
      args: [],
    );
  }

  /// `name`
  String get profilePagePlaceHolderName {
    return Intl.message(
      'name',
      name: 'profilePagePlaceHolderName',
      desc: '',
      args: [],
    );
  }

  /// `User name`
  String get profilePagePlaceHolderUsername {
    return Intl.message(
      'User name',
      name: 'profilePagePlaceHolderUsername',
      desc: '',
      args: [],
    );
  }

  /// `password`
  String get profilePagePlaceHolderPassword {
    return Intl.message(
      'password',
      name: 'profilePagePlaceHolderPassword',
      desc: '',
      args: [],
    );
  }

  /// `Apply`
  String get profilePageButtonApply {
    return Intl.message(
      'Apply',
      name: 'profilePageButtonApply',
      desc: '',
      args: [],
    );
  }

  /// `Help`
  String get helpPageHeader {
    return Intl.message(
      'Help',
      name: 'helpPageHeader',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get helpPageHelpText {
    return Intl.message(
      '',
      name: 'helpPageHelpText',
      desc: '',
      args: [],
    );
  }

  /// `FAQs`
  String get helpPageTitleFAQs {
    return Intl.message(
      'FAQs',
      name: 'helpPageTitleFAQs',
      desc: '',
      args: [],
    );
  }

  /// `What do I do if I don't have an SMS bundle?`
  String get helpPageFAQ1 {
    return Intl.message(
      'What do I do if I don\'t have an SMS bundle?',
      name: 'helpPageFAQ1',
      desc: '',
      args: [],
    );
  }

  /// `What do I do if I don't have an SMS bundle?`
  String get helpPageFAQ2 {
    return Intl.message(
      'What do I do if I don\'t have an SMS bundle?',
      name: 'helpPageFAQ2',
      desc: '',
      args: [],
    );
  }

  /// `What do I do if I don't have an SMS bundle?`
  String get helpPageFAQ3 {
    return Intl.message(
      'What do I do if I don\'t have an SMS bundle?',
      name: 'helpPageFAQ3',
      desc: '',
      args: [],
    );
  }

  /// `What do I do if I don't have an SMS bundle?`
  String get helpPageFAQ4 {
    return Intl.message(
      'What do I do if I don\'t have an SMS bundle?',
      name: 'helpPageFAQ4',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settingsPageHeader {
    return Intl.message(
      'Settings',
      name: 'settingsPageHeader',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get settingsPageSettingsTitleLanguage {
    return Intl.message(
      'Language',
      name: 'settingsPageSettingsTitleLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Customize app language for a personalized experience.`
  String get settingsPageSettingsTitleCurrency {
    return Intl.message(
      'Customize app language for a personalized experience.',
      name: 'settingsPageSettingsTitleCurrency',
      desc: '',
      args: [],
    );
  }

  /// `Customize app language for a personalized experience.`
  String get settingsPageSettingsTitleTheme {
    return Intl.message(
      'Customize app language for a personalized experience.',
      name: 'settingsPageSettingsTitleTheme',
      desc: '',
      args: [],
    );
  }

  /// `Terms and Conditions`
  String get termsPageHeader {
    return Intl.message(
      'Terms and Conditions',
      name: 'termsPageHeader',
      desc: '',
      args: [],
    );
  }

  /// ``
  String get termsPageTermsAndConditionsContent {
    return Intl.message(
      '',
      name: 'termsPageTermsAndConditionsContent',
      desc: '',
      args: [],
    );
  }

  /// `Contact Us`
  String get contactPageHeader {
    return Intl.message(
      'Contact Us',
      name: 'contactPageHeader',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get contactPagePlaceHolderName {
    return Intl.message(
      'Name',
      name: 'contactPagePlaceHolderName',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get contactPagePlaceHolderEmail {
    return Intl.message(
      'Email',
      name: 'contactPagePlaceHolderEmail',
      desc: '',
      args: [],
    );
  }

  /// `Message`
  String get contactPagePlaceTextMessage {
    return Intl.message(
      'Message',
      name: 'contactPagePlaceTextMessage',
      desc: '',
      args: [],
    );
  }

  /// `Please ensure that you have an active SMS bundle on either 674063317 or 657345099, depending on your selection. Please be aware that you may incur charges for SMS if you do not have an active bundle.`
  String get recommendationPrompt {
    return Intl.message(
      'Please ensure that you have an active SMS bundle on either 674063317 or 657345099, depending on your selection. Please be aware that you may incur charges for SMS if you do not have an active bundle.',
      name: 'recommendationPrompt',
      desc: '',
      args: [],
    );
  }

  /// `Successful. Approve the transaction request.`
  String get successPromptTransaction {
    return Intl.message(
      'Successful. Approve the transaction request.',
      name: 'successPromptTransaction',
      desc: '',
      args: [],
    );
  }

  /// `Failed. Make sure you have an active bundle or buy online.`
  String get failurePromtTransaction {
    return Intl.message(
      'Failed. Make sure you have an active bundle or buy online.',
      name: 'failurePromtTransaction',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to Logout?`
  String get logoutPrompt {
    return Intl.message(
      'Are you sure you want to Logout?',
      name: 'logoutPrompt',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'af'),
      Locale.fromSubtags(languageCode: 'fr'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
