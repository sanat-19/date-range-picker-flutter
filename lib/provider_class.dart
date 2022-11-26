import 'package:flutter/material.dart';

class DatePickerProvider extends ChangeNotifier {
  DateTimeRange date = DateTimeRange(
      start: DateTime.now(),
      end: DateTime.now().add(const Duration(hours: 24)));
  String get selectedDate => date.toString();

  showPicker(BuildContext context) {
    showDateRangePicker(
      context: context,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 30)),
    ).then((value) {
      date = DateTimeRange(
        start: value!.start,
        end: value.end,
      );
      notifyListeners();
    });
  }
}
