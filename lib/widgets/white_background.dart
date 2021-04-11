import 'package:flutter/material.dart';

class WhiteBackground extends StatelessWidget {
  const WhiteBackground({Key key, this.widgets, this.margin}) : super(key: key);

  final List<Widget> widgets;
  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: margin,
        color: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(20.0),
              topRight: const Radius.circular(20.0),
              bottomLeft: const Radius.circular(20.0),
              bottomRight: const Radius.circular(20.0),
            ),
          ),
          child: Center(
            child: Container(
              child: Expanded(
                child: Column(
                  children: widgets,
                ),
              ),
              padding: EdgeInsets.all(20),
            ),
          ),
        ),
      ),
    );
  }
}
