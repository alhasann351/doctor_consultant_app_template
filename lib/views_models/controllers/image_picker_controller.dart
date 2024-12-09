import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController {
  final ImagePicker imagePicker = ImagePicker();
  RxString imagePath = ''.obs;

  Future getImageCamera() async {
    final cameraImage = await imagePicker.pickImage(source: ImageSource.camera);
    if (cameraImage != null) {
      imagePath.value = cameraImage.path.toString();
    }
  }

  Future getImageGallery() async {
    final galleryImage =
        await imagePicker.pickImage(source: ImageSource.gallery);
    if (galleryImage != null) {
      imagePath.value = galleryImage.path.toString();
    }
  }
}
