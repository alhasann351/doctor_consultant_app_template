import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'splash_text_1': 'Welcome to',
          'splash_text_2': 'Doctor Consultant',
        },
        'bn_BD': {
          'splash_text_1': 'স্বাগতম',
          'splash_text_2': 'ডাক্তার পরামর্শদাতা',
        },
        'hi_IN': {
          'splash_text_1': 'आपका स्वागत है',
          'splash_text_2': 'डॉक्टर सलाहकार',
        },
      };
}
