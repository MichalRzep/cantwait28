import 'package:intl/intl.dart';

class ItemModel {
  ItemModel({
    required this.tittle,
    required this.imageURL,
    required this.relaseDate,
    required this.id,
  });

  final String tittle;
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
