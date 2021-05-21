import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (context, index) {
        return Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  "Изменена видимость путешествия".text.make(),
                  "Видимость Путешествия 'Казанский Кремль' изменена на 'Публичный'"
                      .text
                      .gray400
                      .softWrap(true)
                      .make()
                      .w(context.percentWidth * 80)
                ],
              ).box.margin(const EdgeInsets.all(4)).make(),
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {},
              )
            ],
          ).p4(),
        );
      },
    );
  }
}
