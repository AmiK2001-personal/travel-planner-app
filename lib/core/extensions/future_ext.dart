import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

extension FutureExt<T> on Future {
  FutureBuilder futureBuilder(Widget Function(dynamic data) onOk,
      Widget Function(dynamic errors) onError, Widget Function() onLoading) {
    return FutureBuilder(
      future: this,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return onOk(snapshot.data);
        } else if (snapshot.hasError) {
          return "Ошибка".text.makeCentered();
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
