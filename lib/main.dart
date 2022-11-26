import 'package:date_range_picker/homepage.dart';
import 'package:date_range_picker/provider_class.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
          create: (context) => DatePickerProvider(),
          child: const MyHomePage(title: 'Date Range Picker')),
    );
  }
}
