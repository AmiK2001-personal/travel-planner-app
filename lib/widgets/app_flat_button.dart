import 'package:flutter/material.dart';

class AppFlatButton extends StatelessWidget {
  const AppFlatButton(
      {Key key, this.width, this.height, this.onPressed, this.child})
      : super(key: key);

  final num width;
  final num height;
  final Function onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: MaterialButton(
        onPressed: onPressed,
        child: child,
        textColor: Theme.of(context).accentColor,
      ),
    );
  }
}
