import 'package:athathi/screens/auth/login_screen.dart';
import 'package:athathi/screens/auth/otp_verification_screen.dart';
import 'package:athathi/screens/home_screen/home_screen.dart';
import 'package:athathi/screens/intro_screens/choose_lang_screen.dart';
import 'package:athathi/screens/intro_screens/get_start_screen.dart';
import 'package:athathi/screens/intro_screens/splash_screen.dart';
import 'package:athathi/screens/product_screen/category_screen.dart';
import 'package:athathi/screens/profile_screen/profile_setup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../../screens/home_screen/bottom_navbar.dart';

class AppRoutes {
  // intro
  static const String splashScreen = "/splashScreen";
  static const String getStartedScreen = "/getStartedScreen";
  static const String chooseLangScreen = "/chooseLangScreen";
  static const String bottomNavBarScreen = "/bottomNavBarScreen";

  static const String loginScreen = "/loginScreen";
  static const String otpScreen = "/otpScreen";
  static const String updateMobileScreen = "/updateMobileScreen";
  static const String homeScreen = "/homeScreen";
  static const String searchScreen = "/searchScreen";
  static const String filterScreen = "/filterScreen";

  static const String categoryScreen = "/categoryScreen";
  static const String productScreen = "/productScreen";
  static const String reviewScreen = "/reviewScreen";

  static const String cartScreen = "/cartScreen";
  static const String selectAddressScreen = "/selectAddressScreen";
  static const String checkoutScreen = "/checkoutScreen";
  static const String couponScreen = "/couponScreen";
  static const String paymentScreen = "/paymentScreen";

  // user profile
  static const String profileSetupScreen = "/profileSetupScreen";
  static const String addAddressScreen = "/addAddressScreen";
  static const String favouriteScreen = "/favouriteScreen";
  static const String notificationScreen = "/notificationScreen";
  static const String updateProfileScreen = "/updateProfileScreen";
  static const String orderScreen = "/orderScreen";
  static const String addReviewScreen = "/addReviewScreen";
  static const String returnProductScreen = "/returnProductScreen";

  // app policy
  static const String aboutUsScreen = "/aboutUsScreen";
  static const String returnPolicyScreen = "/returnPolicyScreen";
  static const String shippingPolicyScreen = "/shippingPolicyScreen";
  static const String faqsScreen = "/faqsScreen";
  static const String contactUsScreen = "/contactUsScreen";
  static const String termConditionScreen = "/termConditionScreen";

  static List<GetPage> getPages = [
    GetPage(name: splashScreen, page: () => SplashScreen()),
    GetPage(name: getStartedScreen, page: () => GetStartScreen()),
    GetPage(name: bottomNavBarScreen, page: () => BottomNavbar()),
    GetPage(name: chooseLangScreen, page: () => ChooseLangScreen()),
    GetPage(name: loginScreen, page: () => LoginScreen()),
    GetPage(name: otpScreen, page: () => OtpVerificationScreen()),
    GetPage(name: homeScreen, page: () => HomeScreen()),
    GetPage(name: profileSetupScreen, page: () => ProfileSetupScreen()),
    GetPage(name: categoryScreen, page: () => CategoryScreen()),
    // GetPage(name: splashScreen, page: () => Container()),
    // GetPage(name: splashScreen, page: () => Container()),
    // GetPage(name: splashScreen, page: () => Container()),
  ];
}