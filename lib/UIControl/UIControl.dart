// ignore: file_names
import 'package:flutter/material.dart';

class UIControlPage extends StatefulWidget {
  const UIControlPage({super.key});
  @override
  State<StatefulWidget> createState() {
    return UIControlPageState();
  }
}

class UIControlPageState extends State<UIControlPage> {
  late bool _switchSelected;
  late bool _checkBoxSelected;
  @override
  void initState() {
    super.initState();
    _switchSelected = true;
    _checkBoxSelected = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'UIControlPage',
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const Text(
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
            const Text.rich(
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
            const ElevatedButton(
              onPressed: null,
              child: Row(
                children: [Text('This is a ElevatedButton')],
              ),
            ),
            const TextButton(
              onPressed: null,
              child: Row(
                children: [Text('This a TextButton')],
              ),
            ),
            const OutlinedButton(
                onPressed: null, child: Text('This is a OutlinedButton')),
            const IconButton(
              onPressed: null,
              icon: Icon(Icons.thumb_down),
            ),
            const Image(
              image: AssetImage("images/send.png"),
              width: 60.0,
            ),
            const Image(
              image: NetworkImage(
                  'https://git.woa.com/uploads/user/avatar/21311/5527e9b8c073413fbb1553aea3a153f9.jpg'),
              width: 60.0,
            ),
            Switch(
              activeColor: Colors.pinkAccent,
              value: _switchSelected,
              onChanged: (value) {
                setState(() {
                  _switchSelected = value;
                });
              },
            ),
            Checkbox(
              activeColor: Colors.redAccent,
              value: _checkBoxSelected,
              onChanged: (value) {
                setState(() {
                  _checkBoxSelected = value ?? false;
                });
              },
            ),
            const TextField(
              autofocus: true,
              decoration: InputDecoration(
                labelText: 'username',
                hintText: 'Username or Email',
                prefixIcon: Icon(Icons.person),
              ),
            ),
            const TextField(
              autofocus: true,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'password',
                hintText: 'Your password',
                prefixIcon: Icon(Icons.lock),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
