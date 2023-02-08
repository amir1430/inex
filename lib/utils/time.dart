import 'package:intl/intl.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';

class InexTime {
  static String unixToDay(int time) =>
      DateFormat.yMd().format(DateTime.fromMillisecondsSinceEpoch(time));

  String get timeMdyhms {
    return DateFormat('M-d-y-h-m-s').format(DateTime.now());
  }

  static bool isInSameDay({required int first, required int second}) =>
      unixToDay(first) == unixToDay(second);
}

extension JalaliX on Jalali {
  String get monthName {
    switch (month) {
      case 1:
        return 'فروردین';
      case 2:
        return 'اردیبهشت';
      case 3:
        return 'خرداد';
      case 4:
        return 'تیر';
      case 5:
        return 'مرداد';
      case 6:
        return 'شهریور';
      case 7:
        return 'مهر';
      case 8:
        return 'آبان';
      case 9:
        return 'آذر';
      case 10:
        return 'دی';
      case 11:
        return 'بهمن';
      default:
        return 'اسفند';
    }
  }
}
