import 'package:flutter/material.dart';
import 'package:travelplanner/models/gen/travel/locations.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:travelplanner/models/gen/travel/travel.dart';
import 'package:travelplanner/pages/widgets/tp_text_field.dart';
import 'package:travelplanner/utilities/constraints.dart';

class LocationEditForm extends StatefulWidget {
  final Locations location;

  LocationEditForm({
    Key? key,
    required this.location,
  }) : super(key: key);

  @override
  _LocationEditFormState createState() => _LocationEditFormState();
}

class _LocationEditFormState extends State<LocationEditForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
        //child: widget.location.name,
        );
  }
}

class MyTravelDetailsPage extends StatefulWidget {
  final Travel travel;

  const MyTravelDetailsPage({
    Key? key,
    required this.travel,
  }) : super(key: key);

  @override
  _MyTravelDetailsPageState createState() => _MyTravelDetailsPageState();
}

class _MyTravelDetailsPageState extends State<MyTravelDetailsPage>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  int _selectedIndex = 0;

  List<Widget> list = const [
    Tab(
      icon: Icon(Icons.info),
      text: "Информация",
    ),
    Tab(
      icon: Icon(Icons.card_travel),
      text: "Локации",
    ),
    Tab(
      icon: Icon(Icons.add_shopping_cart),
      text: "Покупки",
    ),
    Tab(
      icon: Icon(Icons.group),
      text: "Группа",
    ),
  ];

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    // if (picked != null && picked != selectedDate)
    //   setState(() {
    //     selectedDate = picked;
    //   });
  }

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: list.length, vsync: this);

    _controller.addListener(() {
      setState(() {
        _selectedIndex = _controller.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(accentColor: secondaryColor, primaryColor: primaryColor),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            controller: _controller,
            tabs: list,
          ),
        ),
        floatingActionButton: _controller.index > 0
            ? [
                IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: () {
                      print("a");
                    }),
                IconButton(icon: const Icon(Icons.add), onPressed: () {}),
                IconButton(icon: const Icon(Icons.add), onPressed: () {})
              ][_controller.index - 1]
            : null,
        body: TabBarView(
          controller: _controller,
          children: [
            ListView(
              children: [
                TpTextField(
                  icon: const Icon(Icons.info_outlined),
                  hint: "Название",
                  value: widget.travel.name,
                ),
                TpTextField(
                  icon: const Icon(Icons.info_outlined),
                  hint: "Описание",
                  value: widget.travel.description,
                ),
                HStack([
                  IconButton(
                      icon: const Icon(Icons.date_range),
                      onPressed: () {
                        _selectDate(context);
                      }),
                  Text(widget.travel.date.toString()),
                ]).box.border(color: context.theme.accentColor).rounded.make(),
                HStack([
                  const Icon(Icons.public)
                      .box
                      .margin(
                        const EdgeInsets.only(right: 12),
                      )
                      .make(),
                  "Публичный".text.make(),
                  Switch(
                      value: widget.travel.isPublic ?? false,
                      onChanged: (state) {})
                ]).box.margin(const EdgeInsets.only(left: 12)).make()
              ]
                  .map((e) =>
                      e.box.margin(const EdgeInsets.only(bottom: 8)).make())
                  .toList(),
            ).p8(),
            if (widget.travel.locations != null)
              ListView.builder(
                itemBuilder: (context, index) {
                  final location = widget.travel.locations![index];
                  return HStack(
                    [
                      index.text
                          .color(context.theme.accentColor)
                          .make()
                          .box
                          .margin(const EdgeInsets.only(right: 6))
                          .make(),
                      location.name!.text.bold.make()
                    ],
                  ).box.padding(const EdgeInsets.all(10)).make().card.make();
                },
                itemCount: widget.travel.locations!.length,
              )
            else
              "Нет локаций".text.make(),
            if (widget.travel.goodies != null)
              ListView.builder(
                itemBuilder: (context, index) {
                  final goodie = widget.travel.goodies![index];
                  return HStack(
                    [
                      index.text
                          .color(context.theme.accentColor)
                          .make()
                          .box
                          .margin(const EdgeInsets.only(right: 6))
                          .make(),
                      goodie.name!.text.bold.make()
                    ],
                  ).box.padding(const EdgeInsets.all(10)).make().card.make();
                },
                itemCount: widget.travel.goodies!.length,
              )
            else
              "Нет товаров".text.make(),
            Center(
                child: Text(
              _selectedIndex.toString(),
              style: const TextStyle(fontSize: 40),
            )),
          ],
        ),
      ),
    );
  }
}
