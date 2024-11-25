import 'package:doctor_consultant_app_template/resources/routes/routes_name.dart';
import 'package:doctor_consultant_app_template/views/doctors_booking/payment_screen.dart';
import 'package:doctor_consultant_app_template/views/doctors_category_screens/doctors_category_screens.dart';
import 'package:doctor_consultant_app_template/views/forgot_password_screen/forgot_password_screen.dart';
import 'package:doctor_consultant_app_template/views/home_screen/home_screen.dart';
import 'package:doctor_consultant_app_template/views/home_screen/search_input_screen/search_input_screen.dart';
import 'package:doctor_consultant_app_template/views/login_screen/login_screen.dart';
import 'package:doctor_consultant_app_template/views/onboarding_screen/onboarding_screen.dart';
import 'package:doctor_consultant_app_template/views/popular_doctors_screen/popular_doctors_screen.dart';
import 'package:doctor_consultant_app_template/views/signup_login_screen/signup_login_screen.dart';
import 'package:doctor_consultant_app_template/views/signup_screen/signup_screen.dart';
import 'package:doctor_consultant_app_template/views/splash_screen/splash_screen.dart';
import 'package:get/get.dart';

import '../../views/doctors_booking/doctors_booking_screen.dart';
import '../../views/home_screen/live_doctors_screen/live_doctors_screen.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RoutesName.splashScreen,
          page: () => const SplashScreen(),
        ),
        GetPage(
          name: RoutesName.onboardingScreen,
          page: () => const OnboardingScreen(),
        ),
        GetPage(
          name: RoutesName.signupLoginScreen,
          page: () => const SignupLoginScreen(),
          transition: Transition.zoom,
          transitionDuration: const Duration(milliseconds: 600),
        ),
        GetPage(
          name: RoutesName.signupScreen,
          page: () => const SignupScreen(),
          transition: Transition.zoom,
          transitionDuration: const Duration(milliseconds: 600),
        ),
        GetPage(
          name: RoutesName.loginScreen,
          page: () => const LoginScreen(),
          transition: Transition.fadeIn,
          transitionDuration: const Duration(milliseconds: 600),
        ),
        GetPage(
          name: RoutesName.forgotPasswordScreen,
          page: () => const ForgotPasswordScreen(),
          transition: Transition.fade,
          transitionDuration: const Duration(milliseconds: 600),
        ),
        GetPage(
          name: RoutesName.homeScreen,
          page: () => const HomeScreen(),
          transition: Transition.rightToLeft,
          transitionDuration: const Duration(milliseconds: 600),
        ),
        GetPage(
          name: RoutesName.searchInputScreen,
          page: () => const SearchInputScreen(),
          transition: Transition.fadeIn,
          transitionDuration: const Duration(milliseconds: 800),
        ),
        GetPage(
          name: RoutesName.liveDoctorsScreen,
          page: () => const LiveDoctorsScreen(),
          transition: Transition.zoom,
          transitionDuration: const Duration(milliseconds: 600),
        ),
        GetPage(
          name: RoutesName.doctorsCategoryScreens,
          page: () => const DoctorsCategoryScreens(),
          transition: Transition.upToDown,
          transitionDuration: const Duration(milliseconds: 600),
        ),
        GetPage(
          name: RoutesName.paymentScreen,
          page: () => const PaymentScreen(),
          transition: Transition.zoom,
          transitionDuration: const Duration(milliseconds: 600),
        ),
        GetPage(
          name: RoutesName.popularDoctorsScreen,
          page: () => const PopularDoctorsScreen(),
          transition: Transition.fadeIn,
          transitionDuration: const Duration(milliseconds: 600),
        ),
        GetPage(
          name: RoutesName.doctorsBookingScreen,
          page: () => const DoctorsBookingScreen(),
          transition: Transition.fade,
          transitionDuration: const Duration(milliseconds: 600),
        ),
      ];
}
