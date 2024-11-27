import 'package:doctor_consultant_app_template/views_models/controllers/comment_show_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../resources/colors/app_colors.dart';
import '../../../../resources/fonts/app_font_style.dart';

class CommentsInput extends StatefulWidget {
  const CommentsInput({super.key});

  @override
  State<CommentsInput> createState() => _CommentsInputState();
}

class _CommentsInputState extends State<CommentsInput> {
  final TextEditingController commentController = TextEditingController();
  final CommentShowController commentShowController =
      Get.put(CommentShowController());
  final ScrollController scrollController = ScrollController();

  void scrollToBottom() {
    /*scrollController.animateTo(
      scrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );*/
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (scrollController.hasClients) {
        scrollController.jumpTo(scrollController.position.maxScrollExtent);
      }
    });
  }

  @override
  void dispose() {
    commentController.dispose();
    commentShowController.dispose();
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
                color: AppColors.liveDoctorsCommentBoxColor,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10)),
            child: Obx(
              () => ListView.builder(
                controller: scrollController,
                //shrinkWrap: true,
                itemCount: commentShowController.comments.length,
                itemBuilder: (context, index) {
                  final comment = commentShowController.comments[index];
                  return ListTile(
                    leading: CircleAvatar(
                      foregroundImage: AssetImage(comment.image),
                      backgroundColor: AppColors.commonWhiteColor,
                    ),
                    title: Text(
                      comment.name,
                      style: const TextStyle(
                        fontFamily: AppFontStyle.rubik,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.commonWhiteColor,
                      ),
                    ),
                    subtitle: Text(
                      comment.comment,
                      style: const TextStyle(
                        fontFamily: AppFontStyle.rubik,
                        fontSize: 16,
                        color: AppColors.commonWhiteColor,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            cursorColor: AppColors.commonBlackColor,
            keyboardType: TextInputType.text,
            controller: commentController,
            style: const TextStyle(
              fontFamily: AppFontStyle.rubik,
              fontSize: 18,
              color: AppColors.commonBlackColor,
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.commonWhiteColor,
              hintText: 'live_doctors_comments_input_hint_text'.tr,
              hintStyle: const TextStyle(
                fontFamily: AppFontStyle.rubik,
                fontSize: 18,
                color: AppColors.commonGreyColor,
              ),
              prefixIcon: const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Icon(
                  Icons.comment_outlined,
                  color: AppColors.liveDoctorsCommentsInputPrefixIconColor,
                  size: 30,
                ),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: InkWell(
                  onTap: () {
                    if (commentController.text.isNotEmpty) {
                      commentShowController.addComments(commentController.text);
                      commentController.clear();
                      scrollToBottom();
                    }
                  },
                  child: const Icon(
                    Icons.send_outlined,
                    color: AppColors.commonLightBlueAccentColor,
                    size: 25,
                  ),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(style: BorderStyle.none),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(style: BorderStyle.none),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
