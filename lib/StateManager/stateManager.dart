import 'package:flutter/material.dart';

class TapBoxA extends StatefulWidget {
  TapBoxA({Key? key}) : super(key: key);
  _TapStateA createState() => _TapStateA();
}

// Widget自身管理状态
class _TapStateA extends State<TapBoxA> {
  bool _active = false;
  void handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: handleTap,
      child: Container(
        child: Center(
          child: Text(
            _active ? 'Active' : 'Inactive',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black,
            ),
          ),
        ),
        width: 200.0,
        height: 200.0,
        decoration: BoxDecoration(
          color: _active ? Colors.lightGreen[700] : Colors.grey[600],
        ),
      ),
    );
  }
}

class TapBoxB extends StatelessWidget {
  TapBoxB({Key? key, this.active: false, required this.onChanged})
      : super(key: key);

  final bool active;
  final ValueChanged<bool> onChanged;
  void _handleTap() {
    onChanged(!active);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        child: Center(
          child: Text(
            active ? 'Active' : 'Inactive',
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
        ),
        width: 200.0,
        height: 200.0,
        decoration: BoxDecoration(
          color: active ? Colors.lightGreen[700] : Colors.grey[600],
        ),
      ),
    );
  }
}

class ParentWidget extends StatefulWidget {
  @override
  _ParsentWidgetState createState() => _ParsentWidgetState();
}

class _ParsentWidgetState extends State<ParentWidget> {
  bool _active = false;
  void _handleBoxChanged(bool active) {
    setState(() {
      _active = active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TapBoxB(
        active: _active,
        onChanged: _handleBoxChanged,
      ),
    );
  }
}
