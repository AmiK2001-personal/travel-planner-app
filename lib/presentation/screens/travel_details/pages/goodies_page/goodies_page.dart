import 'package:flutter/material.dart';
import 'package:travelplanner/presentation/screens/travel_details/pages/goodies_page/widgets/widgets.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:travelplanner/domain/entities/travel/travel.dart';

class GoodiesPage extends StatefulWidget {
  const GoodiesPage({
    Key? key,
    required this.travel,
  }) : super(key: key);

  final Travel travel;

  @override
  _GoodiesPageState createState() => _GoodiesPageState();
}

class _GoodiesPageState extends State<GoodiesPage> {
  @override
  Widget build(BuildContext context) {
    if (widget.travel.goodies != null) {
      return Stack(
        children: [
          buildGoodiesListView(widget.travel),
          Align(
            alignment: Alignment.bottomLeft,
            child:
                "Сумма: ${widget.travel.goodies!.fold<double>(0, (acc, e) => acc + e.price! * e.quantity!)}"
                    .text
                    .red400
                    .headline5(context)
                    .make()
                    .p20(),
          ),
        ],
      );
    } else {
      return "Нет товаров".text.headline6(context).makeCentered();
    }
  }
}
