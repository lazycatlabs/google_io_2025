import 'package:flutter/material.dart';
import 'package:google_io_2025/src/for_loop_page.dart';
import 'package:google_io_2025/src/home_page.dart';
import 'package:google_io_2025/src/rust/frb_generated.dart';
import 'package:google_io_2025/src/counter_page.dart';

Future<void> main() async {
  await RustLib.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/for-loop": (context) => const ForLoopPage(),
        "/counter": (context) => const CounterPage(),
        "/": (context) => const HomePage(),
      },
      initialRoute: "/",
    );
  }
}
