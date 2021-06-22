import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelplanner/data/repositories/travel_remote_data_source.dart';
import 'package:travelplanner/domain/entities/travel/travellers.dart';

class RoleSelectDialog extends StatefulWidget {
  final String travelId;
  final List<Travellers>? travellers;
  final Travellers traveller;

  const RoleSelectDialog(this.travelId, this.travellers, this.traveller);

  @override
  RoleSelectDialogState createState() => RoleSelectDialogState();
}

class RoleSelectDialogState extends State<RoleSelectDialog> {
  final TextEditingController emailController = TextEditingController();
  TravelRemoteDataSource travelRemoteDataSource = Get.find();
  FirebaseFirestore firebase = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Сменить роль"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            DropdownSearch(
              items: const ["Создатель", "Участник"],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: ElevatedButton(
                    onPressed: () async {
                      // firebase
                      //     .collection("travels")
                      //     .doc(widget.travelId)
                      //     .update();
                      Navigator.pop(context);
                    },
                    child: const Text("Сохранить"),
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
