import 'package:doctor_consultant_app_template/models/comments_model.dart';
import 'package:doctor_consultant_app_template/resources/assets/images_icons.dart';
import 'package:get/get.dart';

class CommentShowController extends GetxController {
  final RxList comments = <Comments>[].obs;

  void addComments(String comment) {
    final newComments = Comments(
        image: ImagesIcons.profileImage, name: 'Al-Hasan', comment: comment);

    comments.add(newComments);
  }
}
