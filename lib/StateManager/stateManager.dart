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

// 父widget管理状态

class TapBoxB extends StatelessWidget {
  TapBoxB({Key? key, this.active = false, required this.onChanged})
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

// 混合管理状态

class ExternalWidget extends StatefulWidget {
  @override
  ExternalWidgetState createState() => ExternalWidgetState();
}

class ExternalWidgetState extends State<ExternalWidget> {
  bool _active = false;
  void _handleBoxTap(bool active) {
    setState(() {
      _active = active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BorderBox(
        active: _active,
        onChanged: _handleBoxTap,
      ),
    );
  }
}

class InternalWidgetState extends State<BorderBox> {
  bool _highlight = false;

  void _handleTapDown(TapDownDetails) {
    setState(() {
      _highlight = true;
    });
  }

  void _handleTapUp(TapUpDetails) {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTapCancel() {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTap() {
    widget.onChanged(!widget.active);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: _handleTapDown,
      onTapUp: _handleTapUp,
      onTapCancel: _handleTapCancel,
      onTap: _handleTap,
      child: Container(
        child: Center(
          child: Text(
            widget.active ? 'Active' : 'Inactive',
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
        ),
        width: 200.0,
        height: 200.0,
        decoration: BoxDecoration(
          color: widget.active ? Colors.lightGreen[700] : Colors.grey[600],
          border: _highlight
              ? Border.all(
                  color: Colors.orange,
                  width: 10.0,
                )
              : null,
        ),
      ),
    );
  }
}

class BorderBox extends StatefulWidget {
  BorderBox({Key? key, this.active = false, required this.onChanged})
      : super(key: key);

  final active;
  final ValueChanged<bool> onChanged;

  @override
  InternalWidgetState createState() => InternalWidgetState();
}
