import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movieapp_ui/presentation/screens/category_screen.dart';
import 'package:movieapp_ui/presentation/screens/home_screen.dart';
import 'package:movieapp_ui/presentation/screens/movie_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 10, 11, 18),
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const HomeScreen(),
        "category":(context) => const CategoryScreen(),
        "movieScreen":(context) => const MovieScreen(),
      },
    );
  }
}