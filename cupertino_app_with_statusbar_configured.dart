import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:practice/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: CupertinoColors.white,
        statusBarIconBrightness: Brightness.dark));

    return const CupertinoApp(
      home: HomeScreen(),
    );
  }
}

