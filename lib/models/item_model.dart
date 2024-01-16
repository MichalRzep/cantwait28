import 'package:intl/intl.dart';

class ItemModel {
  ItemModel({
    required this.title,
    required this.imageURL,
    required this.relaseDate,
    required this.id,
  });

  final String title;
  final String imageURL;
  final DateTime relaseDate;
  final String id;

  String daysLeft() {
    return relaseDate.difference(DateTime.now()).inDays.toString();
  }

  String formatedDateTime() {
    return DateFormat.MMMEd().format(relaseDate).toString();
  }
}
