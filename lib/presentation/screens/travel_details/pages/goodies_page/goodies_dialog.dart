import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kt_dart/kt.dart';
import 'package:supercharged/supercharged.dart';
import 'package:travelplanner/domain/entities/travel/goodies.dart';
import 'package:velocity_x/velocity_x.dart';

class GoodieScreenDialog extends StatefulWidget {
  final List<Goodies>? goodies;
  final String travelId;

  const GoodieScreenDialog(this.travelId, this.goodies);

  @override
  GoodieScreenDialogState createState() => GoodieScreenDialogState();
}

class GoodieScreenDialogState extends State<GoodieScreenDialog> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController quantityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Товар"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            TextField(
              decoration: const InputDecoration(labelText: "Название"),
              controller: nameController,
            ),
            TextField(
              decoration: const InputDecoration(labelText: "Цена"),
              keyboardType: TextInputType.number,
              controller: priceController,
            ),
            TextField(
              decoration: const InputDecoration(labelText: "Количество"),
              keyboardType: const TextInputType.numberWithOptions(),
              controller: quantityController,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: ElevatedButton(
                    onPressed: () async {
                      if (num.tryParse(quantityController.text) != null &&
                          num.tryParse(priceController.text) != null &&
                          nameController.text.isNotEmpty) {
                        var data = List<Map<String, dynamic>>.empty();
                        if (widget.goodies != null) {
                          data = widget.goodies!.kt
                              .plusElement(Goodies(
                                  name: nameController.text,
                                  price: priceController.text.toDouble(),
                                  quantity: quantityController.text.toInt()))
                              .map((e) => e.toJson())
                              .asList();
                        } else {
                          data = [
                            Goodies(
                                    name: nameController.text,
                                    price: priceController.text.toDouble(),
                                    quantity: quantityController.text.toInt())
                                .toJson()
                          ];
                        }
                        await FirebaseFirestore.instance
                            .collection("travels")
                            .doc(widget.travelId)
                            .update({"goodies": data});
                        Navigator.pop(context);
                      } else {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return VStack([
                              "Ошибка добавления данных"
                                  .text
                                  .headline5(context)
                                  .make(),
                              ElevatedButton(
                                  onPressed: () {
                                    context.pop();
                                  },
                                  child: "Понятно".text.makeCentered())
                            ])
                                .box
                                .margin(const EdgeInsets.all(18))
                                .make()
                                .card
                                .rounded
                                .makeCentered();
                          },
                        );
                      }
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
