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
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            textDirection: TextDirection.ltr,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'jayce',
                    style: TextStyle(
                      backgroundColor: Colors.amberAccent,
                      color: Colors.blueAccent,
                    ),
                  ),
                  Text(
                    'han',
                    style: TextStyle(
                      backgroundColor: Colors.amberAccent,
                      color: Colors.blueAccent,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'jayce',
                  ),
                  Text('han'),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'jayce',
                  ),
                  Text('han'),
                ],
              ),
            ],
          ),
          const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            textDirection: TextDirection.ltr,
            verticalDirection: VerticalDirection.down,
            children: [
              Text('jayce'),
              Text('han'),
            ],
          ),
        ],
      ),
    );
  }
}
