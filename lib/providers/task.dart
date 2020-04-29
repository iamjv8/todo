import 'package:flutter/foundation.dart';

enum Status {
  Open,
  Completed
}

class Task {
  final String id;
  final String text;
  final DateTime time;

  Task({
    @required this.id,
    @required this.text,
    @required this.time,
  });

}
