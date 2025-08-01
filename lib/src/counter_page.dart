import 'package:flutter/material.dart';
import 'package:google_io_2025/src/rust/api/counter.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Counter Example")),
      body: Center(
        child: Row(
          spacing: 30,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => setState(() => decrementCounter()),
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all<Color>(Colors.red),
                foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
              ),
              child: Icon(Icons.remove),
            ),
            Text("Counter: ${getCounter()}", style: TextStyle(fontSize: 24)),
            TextButton(
              onPressed: () => setState(() => incrementCounter()),
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all<Color>(Colors.green),
                foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
              ),
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
