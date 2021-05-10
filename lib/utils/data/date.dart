String beautifiedDate(DateTime time) {
  return "${time.day}  " + "${monthAbbr(time.month)} " + "${time.year}";
}

String beautifiedDateWithTime(DateTime time) {
  return "${time.day}  " +
      "${monthAbbr(time.month)} " +
      "${time.year}  at ${time.hour}:${time.minute}";
}

String differenceBetween(DateTime date) {
  DateTime today = DateTime.now();

  Duration _diff = date.difference(today);

  int _dayz = _diff.inDays;
  int _hrs = _diff.inHours;
  int _minutes = _diff.inMinutes;

  if (_diff.inSeconds.abs() < 60) {
    return "Just now";
  }
  if (_minutes.abs() < 60) {
    return "${_minutes.abs()} min ago";
  }
  if (_hrs.abs() < 24) {
    return "${_hrs.abs()}${_hrs > 1 ? "hrs" : "hr"} ago";
  }
  if (_dayz.abs() < 31) {
    return "${_dayz.abs()}${_dayz < 1 ? "days" : "day"} ago";
  }

  return beautifiedDate(date);
}

String month(int mon) {
  switch (mon) {
    case 1:
      return "January";
      break;
    case 2:
      return "February";
      break;
    case 3:
      return "March";
      break;
    case 4:
      return "April";
      break;
    case 5:
      return "May";
      break;
    case 6:
      return "June";
      break;
    case 7:
      return "July";
      break;
    case 8:
      return "August";
      break;
    case 9:
      return "September";
      break;
    case 10:
      return "October";
      break;
    case 11:
      return "November";
      break;
    case 12:
      return "December";
      break;
    default:
      return "";
  }
}

/// YYYY-MM-DD
String formattedDate(DateTime date) {
  return "${date.year}-${withZero(date.month)}-${withZero(date.day)}";
}

String monthAbbr(int mon) {
  /// returns Abbrevated months

  switch (mon) {
    case 1:
      return "Jan";
      break;
    case 2:
      return "Feb";
      break;
    case 3:
      return "Mar";
      break;
    case 4:
      return "Apr";
      break;
    case 5:
      return "May";
      break;
    case 6:
      return "Jun";
      break;
    case 7:
      return "Jul";
      break;
    case 8:
      return "Aug";
      break;
    case 9:
      return "Sept";
      break;
    case 10:
      return "Oct";
      break;
    case 11:
      return "Nov";
      break;
    case 12:
      return "Dec";
      break;
    default:
      return "";
  }
}

String formattedTime(DateTime time) {
  return withZero(time.hour) + ":" + withZero(time.minute);
}

String day(int day) {
  /// returns Abbrevated dates

  switch (day) {
    case 1:
      return "Mon";
      break;
    case 2:
      return "Tue";
      break;
    case 3:
      return "Wed";
      break;
    case 4:
      return "Thu";
      break;
    case 5:
      return "Fri";
      break;
    case 6:
      return "Sat";
      break;
    case 7:
      return "Sun";
      break;
    default:
      return "";
  }
}

String withZero(int value) {
  return value < 10 ? "0${value.toString()}" : "${value.toString()}";
}
