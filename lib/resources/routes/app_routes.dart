import 'package:doctor_consultant_app_template/resources/routes/routes_name.dart';
import 'package:doctor_consultant_app_template/views/bottom_nav_bar/bottom_nav_bar_screen.dart';
import 'package:doctor_consultant_app_template/views/forgot_password_screen/forgot_password_screen.dart';
import 'package:doctor_consultant_app_template/views/home_screen/doctors_category/doctors_category_screen.dart';
import 'package:doctor_consultant_app_template/views/home_screen/users_profile/users_profile_screen.dart';
import 'package:doctor_consultant_app_template/views/home_screen/users_profile/widgets/user_details.dart';
import 'package:doctor_consultant_app_template/views/login_screen/login_screen.dart';
import 'package:doctor_consultant_app_template/views/onboarding_screen/onboarding_screen.dart';
import 'package:doctor_consultant_app_template/views/signup_login_screen/signup_login_screen.dart';
import 'package:doctor_consultant_app_template/views/signup_screen/signup_screen.dart';
import 'package:doctor_consultant_app_template/views/splash_screen/splash_screen.dart';
import 'package:get/get.dart';

import '../../views/home_screen/doctors_category/doctors_booking/all_category_doctors_booking/payment/payment_screen.dart';
import '../../views/home_screen/doctors_category/doctors_booking/doctors_booking_screen.dart';
import '../../views/home_screen/live_doctors/live_doctors_screen.dart';
import '../../views/home_screen/popular_doctors/popular_doctors_screen.dart';
import '../../views/home_screen/search_input/search_input_screen.dart';

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
          name: RoutesName.bottomNavBarScreen,
          page: () => const BottomNavBarScreen(),
          transition: Transition.rightToLeft,
          transitionDuration: const Duration(milliseconds: 800),
        ),
        GetPage(
          name: RoutesName.userProfileScreen,
          page: () => const UsersProfileScreen(),
          transition: Transition.fade,
          transitionDuration: const Duration(milliseconds: 600),
        ),
        GetPage(
          name: RoutesName.userDetails,
          page: () => const UserDetails(),
          transition: Transition.zoom,
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
          page: () => const DoctorsCategoryScreen(),
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
