import 'package:flutter/material.dart';

// main
void main() {
  runApp(const MaterialApp(
    home: gradientWidget(),
  ));
}

/// The background color
class gradientWidget extends StatelessWidget {
  const gradientWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.red, Colors.orange],
              begin: Alignment.topLeft,
              end: Alignment.topRight),
        ),
        child: const Center(child: styledText()),
      ),
    );
  }
}

/// Styled hello world text
class styledText extends StatelessWidget {
  const styledText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Hello World!',
      style: TextStyle(
          color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
    );
  }
}
