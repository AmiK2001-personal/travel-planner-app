import 'package:flutter/material.dart';

class OutlineRoundedButton extends StatefulWidget {
  const OutlineRoundedButton(
      {Key key, this.width, this.height, this.onTap, this.child, this.radius})
      : super(key: key);

  final double width;
  final double height;
  final Function onTap;
  final Widget child;
  final double radius;

  @override
  _AppRoundedButtonState createState() => _AppRoundedButtonState();
}

class _AppRoundedButtonState extends State<OutlineRoundedButton> {
  Color borderColor = Colors.black12;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.radius),
        border: Border.all(color: borderColor, width: 1),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(widget.radius),
        child: Material(
          borderRadius: BorderRadius.circular(widget.radius),
          color: Colors.white,
          child: Container(
            child: InkWell(
              splashColor: Theme.of(context).splashColor.withOpacity(0.3),
              child: Container(
                child: SizedBox(
                    width: widget.width,
                    height: widget.height,
                    child: widget.child),
                margin: EdgeInsets.all(10.0),
              ),
              onTap: widget.onTap,
              onHighlightChanged: (value) {
                if (value) {
                  setState(() {
                    borderColor = Theme.of(context).accentColor;
                  });
                } else {
                  setState(() {
                    borderColor = Colors.black12;
                  });
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
