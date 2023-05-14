import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:ios_phone_app/pages/tabs/tab_bar.dart';

void main(List<String> args) {
  runApp(const PhoneApp());
}

class PhoneApp extends StatelessWidget {
  const PhoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: TabBars(),
    );
  }
}
