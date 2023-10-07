import 'package:flutter/material.dart';

class FlexLayoutWidget extends StatelessWidget {
  const FlexLayoutWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('弹性布局'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SizedBox(
              height: 200.0,
              child: Flex(
                direction: Axis.vertical,
                children: [
                  // Expanded只能作为Flex的孩子
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 50.0,
                      color: Colors.yellowAccent,
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 50,
                      color: Colors.orangeAccent,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flex(
            direction: Axis.horizontal,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 100,
                  color: Colors.blueAccent,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 70,
                  color: Colors.pinkAccent,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
