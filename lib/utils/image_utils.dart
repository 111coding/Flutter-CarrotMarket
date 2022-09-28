import 'package:image_picker/image_picker.dart';

class ImageUtils {
  static Future<String?> getPathFromGallery() async {
    final XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);
    return image?.path;
  }
}
