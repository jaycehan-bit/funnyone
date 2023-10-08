import 'package:flutter/material.dart';

class FlowLayoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Wrap(
      spacing: 8.0, // 主轴（水平）方向间距
      runSpacing: 4.0, // 纵轴（垂直）方向间距
      alignment: WrapAlignment.center, // 沿主轴方向居中
      children: [
        Chip(
          label: Text('Hamilton'),
          avatar: CircleAvatar(
            backgroundColor: Colors.blue,
            child: Text('A'),
          ),
        ),
        Chip(
          avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text('M')),
          label: Text('Lafayette'),
        ),
        Chip(
          avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text('H')),
          label: Text('Mulligan'),
        ),
        Chip(
          avatar: CircleAvatar(backgroundColor: Colors.blue, child: Text('J')),
          label: Text('Laurens'),
        ),
      ],
    );
  }
}
