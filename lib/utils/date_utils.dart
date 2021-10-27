import 'package:intl/intl.dart';

class CustomDateFormat {
  static getFormat({DateTime? dateTime}) {
    final f = new DateFormat('yyyy-MM-dd', "fr_FR");
    return f;
  }

  static getHistoryDate({required DateTime dateTime}) {
    final f = new DateFormat("yyyy-MM-dd", "fr_FR").add_Hm();
    return f.format(dateTime);
  }
  static getWithFormat({required DateTime dateTime}) {
    final f = new DateFormat('yyyy-MM-dd');
    print(f.format(dateTime));
    return f.format(dateTime);
  }
}
