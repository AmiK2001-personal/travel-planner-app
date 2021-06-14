import 'package:flutter/material.dart';
import 'package:travelplanner/presentation/screens/travel_details/pages/group_page/widgets/widgets.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:travelplanner/domain/entities/travel/travel.dart';

class MembersPage extends StatefulWidget {
  const MembersPage({
    Key? key,
    required this.travel,
  }) : super(key: key);

  final Travel travel;

  @override
  _MembersPageState createState() => _MembersPageState();
}

class _MembersPageState extends State<MembersPage> {
  @override
  Widget build(BuildContext context) {
    if (widget.travel.travellers != null) {
      return buildMembersListView(context, widget.travel);
    } else {
      return "Нет участников".text.headline6(context).makeCentered();
    }
  }
}
