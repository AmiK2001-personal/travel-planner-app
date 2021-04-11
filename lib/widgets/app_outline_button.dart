import 'package:flutter/material.dart';

class AppOutlineButton extends StatelessWidget {
  final num width;
  final num height;
  final Function onPressed;
  final Widget child;

  const AppOutlineButton(
      {Key key, this.width, this.height, this.onPressed, this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: OutlinedButton(child: child, onPressed: onPressed),
    );
  }
}
