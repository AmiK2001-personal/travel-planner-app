import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:travel_planner_app/widgets/white_background.dart';

class BackgroundWindow extends StatelessWidget {
  final List<Widget> widgets;
  final double height;
  final double width;
  final EdgeInsetsGeometry margin;

  const BackgroundWindow(
      {Key key, this.widgets, this.height, this.width, this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          // Bottom panel
          height: height,
          color: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 223, 224, 228),
            ),
          ),
        ),
        Container(
          // Top panel
          height: context.screenHeight / 2,
          color: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
              borderRadius: BorderRadius.only(
                bottomLeft: const Radius.circular(20.0),
                bottomRight: const Radius.circular(20.0),
              ),
            ),
          ),
        ),
        Center(
            // Main container
            child: WhiteBackground(
          margin: margin,
          widgets: widgets,
        ))
      ],
    );
  }
}
