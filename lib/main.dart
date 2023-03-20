import 'package:flutter/material.dart';
import 'package:open_ai_copy_cat/core/injection.dart';
import 'package:open_ai_copy_cat/main_feature/presentation/main_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependecies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Manrope",
        primarySwatch: Colors.blue,
      ),
      home: const MainPage(),
    );
  }
}
