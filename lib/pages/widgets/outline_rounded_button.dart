import 'package:flutter/material.dart';

class OutlineRoundedButton extends StatefulWidget {
  @required
  final double width;
  @required
  final double height;
  @required
  final void Function()? onTap;
  @required
  final Widget? child;
  @required
  final double radius;

  const OutlineRoundedButton(
      {Key? key,
      this.width = 0,
      this.height = 0,
      this.onTap,
      this.radius = 0,
      this.child})
      : super(key: key);

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
