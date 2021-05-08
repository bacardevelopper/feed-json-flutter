import 'package:intl/intl.dart';

class DateConvertisseur {
  /* ( l'agrument doit un string ) */
  String convertirDate(String string) {
    String il = "il y'a ";
    String format = "EEE, dd MMM yyyy HH:mm:ss Z";
    var formatter = DateFormat(format);
    DateTime dateTime = formatter.parse(string);
    if (dateTime == null) {
      return 'Date inconnu';
    } else {
      var difference = new DateTime.now().difference(dateTime);
      var jour = difference.inDays;
      var heure = difference.inHours;
      var minutes = difference.inMinutes;

      if (jour > 1) {
        return "$il $jour jours";
      } else if (jour == 1) {
        return "$il 1 jour";
      } else if (heure > 1) {
        return "$il $heure heures";
      } else if (heure == 1) {
        return "$il 1 heure";
      } else if (minutes > 1) {
        return "$il $minutes minutes";
      } else if (minutes == 1) {
        return "$il 1 minutes";
      } else {
        return "A l'instant";
      }
    }
  }
}
