import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class TpTextField extends StatelessWidget {
  final IconData icon;
  final String value;
  final String hint;
  final Color? borderColor;
  final void Function(String)? onChanged;

  const TpTextField(
      {Key? key,
      this.icon = Icons.input,
      this.value = "",
      this.hint = "Input",
      this.borderColor,
      this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxTextField(
      value: value,
      hint: hint,
      icon: Icon(icon),
      fillColor: Colors.transparent,
      borderType: VxTextFieldBorderType.none,
      onChanged: onChanged != null ? onChanged : (str) {},
    )
        .box
        .color(Colors.white)
        .roundedLg
        .padding(EdgeInsets.symmetric(horizontal: 10, vertical: 2))
        .border(color: borderColor ?? Theme.of(context).accentColor)
        .make();
  }
}
