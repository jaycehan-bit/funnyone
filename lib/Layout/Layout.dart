import 'package:flutter/material.dart';

class JCLayoutPage extends StatelessWidget {
  JCLayoutPage({super.key});
  Widget BoxWidget = const DecoratedBox(
    decoration: BoxDecoration(color: Colors.red),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'JCLayout',
        ),
      ),
      body: Column(
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(
              minHeight: 50,
              minWidth: 300,
            ),
            child: Container(
              height: 100,
              child: BoxWidget,
            ),
          ),
          ConstrainedBox(
            constraints:
                const BoxConstraints.tightFor(width: 80.0, height: 80.0),
            child: const SizedBox(
              height: 100,
              width: 100,
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.orange),
              ),
            ),
          )
        ],
      ),
    );
  }
}
