// you need to install provider
// $ flutter pub add provider

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:practice/providers/state_provider.dart';
import 'package:practice/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: CupertinoColors.white,
      statusBarIconBrightness: Brightness.dark));
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => Count())],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      initialRoute: '/',
      routes: {'/': (context) => const HomeScreen()},
    );
  }
}
