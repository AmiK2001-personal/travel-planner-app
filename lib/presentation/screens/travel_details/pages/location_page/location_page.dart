import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:travelplanner/domain/entities/travel/travel.dart';

import 'widgets/widgets.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({
    Key? key,
    required this.travel,
  }) : super(key: key);

  final Travel travel;

  @override
  _MembersPageState createState() => _MembersPageState();
}

class _MembersPageState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
    if (widget.travel.locations != null) {
      return buildLocationsListView(widget.travel);
    } else {
      return "Нет локаций".text.headline6(context).makeCentered();
    }
  }
}
