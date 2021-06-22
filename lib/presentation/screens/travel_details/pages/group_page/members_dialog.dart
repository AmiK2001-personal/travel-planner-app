import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelplanner/data/repositories/travel_remote_data_source.dart';
import 'package:travelplanner/domain/entities/travel/travellers.dart';

class MemberScreenDialog extends StatefulWidget {
  final String travelId;
  final List<Travellers>? travellers;
  const MemberScreenDialog(this.travelId, this.travellers);

  @override
  MemberScreenDialogState createState() => MemberScreenDialogState();
}

class MemberScreenDialogState extends State<MemberScreenDialog> {
  final TextEditingController emailController = TextEditingController();
  TravelRemoteDataSource travelRemoteDataSource = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Добавление в группу"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            TextField(
              decoration:
                  const InputDecoration(labelText: "Email пользователя"),
              controller: emailController,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: ElevatedButton(
                    onPressed: () async {
                      travelRemoteDataSource.addTraveller(emailController.text,
                          widget.travellers, widget.travelId);
                      Navigator.pop(context);
                    },
                    child: const Text("Добавить"),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
