import 'package:doctor_consultant_app_template/resources/routes/routes_name.dart';
import 'package:doctor_consultant_app_template/views/doctors_booking/cancer_doctor_booking/cancer_doctor_booking.dart';
import 'package:doctor_consultant_app_template/views/doctors_booking/doctor_booking_confirm_screen.dart';
import 'package:doctor_consultant_app_template/views/doctors_booking/ear_doctor_booking/ear_doctor_booking.dart';
import 'package:doctor_consultant_app_template/views/doctors_booking/eye_doctor_booking/eye_doctor_booking.dart';
import 'package:doctor_consultant_app_template/views/doctors_booking/heart_doctor_booking/heart_doctor_booking.dart';
import 'package:doctor_consultant_app_template/views/doctors_category_screens/doctors_category_screens.dart';
import 'package:doctor_consultant_app_template/views/forgot_password_screen/forgot_password_screen.dart';
import 'package:doctor_consultant_app_template/views/home_screen/home_screen.dart';
import 'package:doctor_consultant_app_template/views/live_doctors_screen/live_doctors_screen.dart';
import 'package:doctor_consultant_app_template/views/login_screen/login_screen.dart';
import 'package:doctor_consultant_app_template/views/onboarding_screen/onboarding_screen.dart';
import 'package:doctor_consultant_app_template/views/signup_login_screen/signup_login_screen.dart';
import 'package:doctor_consultant_app_template/views/signup_screen/signup_screen.dart';
import 'package:doctor_consultant_app_template/views/splash_screen/splash_screen.dart';
import 'package:get/get.dart';

import '../../views/doctors_booking/skin_doctor_booking/skin_doctor_booking.dart';

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
          name: RoutesName.cancerDoctorBooking,
          page: () => const CancerDoctorBooking(),
          transition: Transition.upToDown,
          transitionDuration: const Duration(milliseconds: 600),
        ),
        GetPage(
          name: RoutesName.earDoctorBooking,
          page: () => const EarDoctorBooking(),
          transition: Transition.downToUp,
          transitionDuration: const Duration(milliseconds: 600),
        ),
        GetPage(
          name: RoutesName.eyeDoctorBooking,
          page: () => const EyeDoctorBooking(),
          transition: Transition.upToDown,
          transitionDuration: const Duration(milliseconds: 600),
        ),
        GetPage(
          name: RoutesName.heartDoctorBooking,
          page: () => const HeartDoctorBooking(),
          transition: Transition.downToUp,
          transitionDuration: const Duration(milliseconds: 600),
        ),
        GetPage(
          name: RoutesName.skinDoctorBooking,
          page: () => const SkinDoctorBooking(),
          transition: Transition.upToDown,
          transitionDuration: const Duration(milliseconds: 600),
        ),
        GetPage(
          name: RoutesName.doctorBookingConfirmScreen,
          page: () => const DoctorBookingConfirmScreen(),
          transition: Transition.leftToRight,
          transitionDuration: const Duration(milliseconds: 600),
        ),
      ];
}
