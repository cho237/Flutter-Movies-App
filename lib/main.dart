import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movies_app/screens/home.dart';

final ThemeData theme = ThemeData(scaffoldBackgroundColor: Color(0xFF0111D));

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Great Places',
      theme: theme,
      home: HomeScreen(),
    );
  }
}
