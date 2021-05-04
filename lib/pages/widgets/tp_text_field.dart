import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class TpTextField extends StatelessWidget {
  final Widget icon;
  final String value;
  final String hint;
  final Color? borderColor;
  final void Function(String)? onChanged;

  const TpTextField(
      {Key? key,
      required this.icon,
      required this.value,
      required this.hint,
      this.borderColor,
      this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxTextField(
      value: value,
      hint: hint,
      icon: icon,
      fillColor: Colors.transparent,
      borderType: VxTextFieldBorderType.none,
      onChanged: onChanged ?? (str) {},
    )
        .box
        .color(Colors.white)
        .roundedLg
        .padding(const EdgeInsets.symmetric(horizontal: 10, vertical: 2))
        .border(color: borderColor ?? Theme.of(context).accentColor)
        .make();
  }
}
