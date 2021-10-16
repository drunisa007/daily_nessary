import 'package:snack_delivery/core/models/language_model.dart';

class LanguageUtil {
  List<LanguageModel> lanuages = [
    LanguageModel("English", "assets/images/us.png", "en_US",["en","US"]),
    LanguageModel("Chinese", "assets/images/china.png", "zh_CN",["zh","CN"]),
    LanguageModel("Myanmar", "assets/images/myanmar.png", "my_MM",["my","MM"])
  ];

  List<LanguageModel> getLanguage() {
    return lanuages;
  }
}
