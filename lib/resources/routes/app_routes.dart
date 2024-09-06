import 'package:doctor_consultant_app_template/resources/routes/routes_name.dart';
import 'package:doctor_consultant_app_template/views/booking_doctors_screen/widgets/cancer_doctors_booking/booking_cancer_doctors_screen.dart';
import 'package:doctor_consultant_app_template/views/doctors_category_screens/doctors_category/cancer_doctors_screen.dart';
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

import '../../views/booking_doctors_screen/widgets/ear_doctors_booking/booking_ear_doctors_screen.dart';
import '../../views/booking_doctors_screen/widgets/eye_doctors_booking/booking_eye_doctors_screen.dart';
import '../../views/booking_doctors_screen/widgets/heart_doctors_booking/booking_heart_doctors_screen.dart';
import '../../views/doctors_category_screens/doctors_category/ear_doctors_screen.dart';
import '../../views/doctors_category_screens/doctors_category/eye_doctors_screen.dart';
import '../../views/doctors_category_screens/doctors_category/heart_doctors_screen.dart';

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
          name: RoutesName.bookingCancerDoctorsScreens,
          page: () => const BookingCancerDoctorsScreen(),
          transition: Transition.zoom,
          transitionDuration: const Duration(milliseconds: 600),
        ),
        GetPage(
          name: RoutesName.cancerDoctorsScreens,
          page: () => const CancerDoctorsScreen(),
          transition: Transition.leftToRight,
          transitionDuration: const Duration(milliseconds: 600),
        ),
        GetPage(
          name: RoutesName.bookingEarDoctorsScreens,
          page: () => const BookingEarDoctorsScreen(),
          transition: Transition.zoom,
          transitionDuration: const Duration(milliseconds: 600),
        ),
        GetPage(
          name: RoutesName.earDoctorsScreens,
          page: () => const EarDoctorsScreen(),
          transition: Transition.leftToRight,
          transitionDuration: const Duration(milliseconds: 600),
        ),
        GetPage(
          name: RoutesName.bookingEyeDoctorsScreens,
          page: () => const BookingEyeDoctorsScreen(),
          transition: Transition.zoom,
          transitionDuration: const Duration(milliseconds: 600),
        ),
        GetPage(
          name: RoutesName.eyeDoctorsScreens,
          page: () => const EyeDoctorsScreen(),
          transition: Transition.leftToRight,
          transitionDuration: const Duration(milliseconds: 600),
        ),
        GetPage(
          name: RoutesName.bookingHeartDoctorsScreens,
          page: () => const BookingHeartDoctorsScreen(),
          transition: Transition.zoom,
          transitionDuration: const Duration(milliseconds: 600),
        ),
        GetPage(
          name: RoutesName.heartDoctorsScreens,
          page: () => const HeartDoctorsScreen(),
          transition: Transition.leftToRight,
          transitionDuration: const Duration(milliseconds: 600),
        ),
      ];
}
