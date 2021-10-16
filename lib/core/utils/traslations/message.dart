import 'package:get/get.dart';

class Message extends Translations{
  @override

  Map<String, Map<String, String>> get keys => {

    'en_US':{
      'hello': 'Hello World'
    },
    'zh_CN':{
      'hello':'你好，世界'
    },
    'my_MM':{
      'hello':'မင်္ဂလာပါကမ္ဘာလောက'
    }
  };

}