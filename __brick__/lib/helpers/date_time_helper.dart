import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class DateTimeHelper {
  final String locale;
  DateTimeHelper({this.locale = "en"}) {
    initializeDateFormatting(locale);
  }

  String getFormattedDateTime(dateTime) {
    final format = DateFormat.yMMMEd(locale);
    final dateString = format.format(dateTime);
    return dateString;
  }

  String getFormattedTime(DateTime dateTime) {
    final format = DateFormat.Hm(locale);
    final timeString = format.format(dateTime);
    return '${timeString}hrs';
  }
}

final kNow = DateTime.now();
final kFirstDay = DateTime(kNow.year, kNow.month - 3, kNow.day);
final kLastDay = DateTime(kNow.year, kNow.month + 1, kNow.day);
