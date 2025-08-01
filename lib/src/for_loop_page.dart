import 'package:flutter/material.dart';
import 'package:google_io_2025/src/rust/api/loop_numbers.dart';

class ForLoopPage extends StatefulWidget {
  const ForLoopPage({super.key});

  @override
  State<ForLoopPage> createState() => _ForLoopPageState();
}

class _ForLoopPageState extends State<ForLoopPage> {
  Duration rustDuration = Duration.zero;
  Duration flutterDuration = Duration.zero;

  int? rustLoopNumbers;
  int? flutterLoopNumbers;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("For-Loop Test")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 16,
          children: [
            ElevatedButton(
              onPressed: () => setState(() {
                /// start the Rust for-loop tes
                final startTime = DateTime.now();
                // Simulate a Rust for-loop test
                rustLoopNumbers = loopNumbers();

                final endTime = DateTime.now();
                rustDuration = endTime.difference(startTime);
              }),
              child: Text("For-Loop Rust Test"),
            ),
            Text(
              "Duration inMicroSeconds: ${rustDuration.inMicroseconds} - $rustLoopNumbers",
            ),
            Divider(height: 100),
            ElevatedButton(
              onPressed: () => setState(() {
                /// start the Flutter for-loop test
                final startTime = DateTime.now();
                flutterLoopNumbers = 0;
                for (int i = 0; i < 1_000_000; i++) {
                  // Simulating some work
                  flutterLoopNumbers = (flutterLoopNumbers ?? 0) + i;
                }
                final endTime = DateTime.now();
                flutterDuration = endTime.difference(startTime);
              }),
              child: Text("For-Loop Flutter Test"),
            ),
            Text(
              "Duration inMicroSeconds: ${flutterDuration.inMicroseconds} - $flutterLoopNumbers",
            ),
          ],
        ),
      ),
    );
  }
}
