import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Rust Bridge Example')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 30,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, "/for-loop"),
              child: Text("For-Loop Test"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, "/counter"),
              child: Text("Counter App"),
            ),
          ],
        ),
      ),
    );
  }
}
