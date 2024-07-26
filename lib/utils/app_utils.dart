import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AppUtils {
  static showToastMessage(String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: AppColors.toastMessageBackgroundColor,
      gravity: ToastGravity.BOTTOM,
      textColor: AppColors.toastMessageTextColor,
    );
  }
}
