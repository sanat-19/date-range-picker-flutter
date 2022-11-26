import 'package:date_range_picker/provider_class.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String getFormat(val) {
    return DateFormat.yMMMEd().format(val);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(30),
          child: Consumer<DatePickerProvider>(
            builder: (context, value, child) {
              TextEditingController dateController = TextEditingController(
                  text:
                      '${getFormat(value.date.start)} - ${getFormat(value.date.end)}');
              return TextFormField(
                controller: dateController,
                onTap: () {
                  value.showPicker(context);
                },
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.calendar_month_rounded),
                  hintText: "Date",
                  labelText: "Date",
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 1,
                      color: Colors.blue,
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
