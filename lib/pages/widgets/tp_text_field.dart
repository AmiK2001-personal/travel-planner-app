import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class TpTextField extends StatelessWidget {
  final Widget icon;
  final String? value;
  final String hint;
  final Color? borderColor;
  final void Function(String)? onChanged;
  final TextEditingController? controller;

  const TpTextField(
      {Key? key,
      required this.icon,
      this.value,
      required this.hint,
      this.borderColor,
      this.onChanged,
      this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxTextField(
      controller: controller,
      value: value ?? "",
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
        .height(50)
        .border(color: borderColor ?? Theme.of(context).accentColor)
        .make();
  }
}
