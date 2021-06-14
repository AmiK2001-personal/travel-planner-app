import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:travelplanner/domain/entities/travel/travellers.dart';
import 'package:kt_dart/kt.dart';

class MemberScreenDialog extends StatefulWidget {
  final String travelId;
  final List<Travellers>? travellers;

  const MemberScreenDialog(this.travelId, this.travellers);

  @override
  MemberScreenDialogState createState() => MemberScreenDialogState();
}

class MemberScreenDialogState extends State<MemberScreenDialog> {
  final TextEditingController _skillOneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Учатник"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            TextField(
              decoration: const InputDecoration(
                  labelText: "Идентификатор пользователя"),
              controller: _skillOneController,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: ElevatedButton(
                    onPressed: () async {
                      var data = List<Map<String, dynamic>>.empty();
                      if (widget.travellers != null) {
                        data = widget.travellers!.kt
                            .plusElement(Travellers(
                                roleId: "2", userId: _skillOneController.text))
                            .map((e) => e.toJson())
                            .asList();
                      } else {
                        data = [
                          Travellers(
                                  roleId: "2", userId: _skillOneController.text)
                              .toJson()
                        ];
                      }
                      await FirebaseFirestore.instance
                          .collection("travels")
                          .doc(widget.travelId)
                          .update({"travellers": data});
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
