import 'package:flutter/material.dart';
import 'package:travel_planner_app/utilities/constraints.dart';

class Entry extends StatefulWidget {
  Entry({Key key, this.icon, this.hint, this.obscureText = false})
      : super(key: key);

  final Icon icon;
  final String hint;
  final bool obscureText;

  @override
  _EntryState createState() => _EntryState();
}

class _EntryState extends State<Entry> {
  _EntryState();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Container(
          decoration: kBoxDecorationStyle,
          alignment: Alignment.centerLeft,
          height: 50,
          child: TextField(
            obscureText: widget.obscureText,
            decoration: InputDecoration(
              focusColor: Theme.of(context).accentColor,
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: widget.icon,
              hintText: widget.hint,
            ),
          ),
        ),
      ),
    );
  }
}
