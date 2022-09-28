import 'package:jiffy/jiffy.dart';

class CarrotDateUtils {
  static String fromNow(DateTime date) {
    return Jiffy(date, "yyyy-MM-dd").fromNow();
  }

  static String compareString(DateTime updateAt, DateTime createAt) {
    if (Jiffy(updateAt).diff(createAt, Units.HOUR) > 0) {
      return "끌올 ${Jiffy(updateAt, "yyyy-MM-dd").fromNow()}";
    }
    return Jiffy(createAt, "yyyy-MM-dd").fromNow();
  }

  static bool canUpdateTime(DateTime updateAt, DateTime createAt) {
    // 테스트용으로 3시간으로 해놓음!
    return Jiffy(updateAt).diff(DateTime.now(), Units.HOUR).abs() >= 3;
  }
}
