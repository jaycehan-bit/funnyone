// ignore: file_names
import 'package:flutter/material.dart';

class UIControlPage extends StatelessWidget {
  const UIControlPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'UIControlPage',
        ),
      ),
      body: const Center(
        child: Column(
          children: [
            Text(
              // 文本内容
              'This is a Text',
              // 对齐方式
              textAlign: TextAlign.center,
              // 最大行数
              maxLines: 1,
              // 截断方式
              overflow: TextOverflow.ellipsis,
              // Text样式
              style: TextStyle(
                color: Colors.cyan,
                fontSize: 18.0,
                height: 1.2,
                fontFamily: "Courier",
              ),
            ),
            Text.rich(
              TextSpan(children: [
                TextSpan(
                  text: 'Home: ',
                  style: TextStyle(
                    color: Colors.blueGrey,
                  ),
                ),
                TextSpan(
                  text: 'https://book.flutterchina.club/chapter3/text.html',
                  style: TextStyle(color: Colors.amber),
                ),
              ]),
            ),
            ElevatedButton(
              onPressed: null,
              child: Row(
                children: [Text('This is a ElevatedButton')],
              ),
            ),
            TextButton(
              onPressed: null,
              child: Row(
                children: [Text('This a TextButton')],
              ),
            ),
            OutlinedButton(
                onPressed: null, child: Text('This is a OutlinedButton')),
            IconButton(
              onPressed: null,
              icon: Icon(Icons.thumb_down),
            ),
            Image(
              image: AssetImage("images/send.png"),
              width: 60.0,
            ),
            Image(
              image: NetworkImage(
                  'https://git.woa.com/uploads/user/avatar/21311/5527e9b8c073413fbb1553aea3a153f9.jpg'),
              width: 60.0,
            ),
          ],
        ),
      ),
    );
  }
}
