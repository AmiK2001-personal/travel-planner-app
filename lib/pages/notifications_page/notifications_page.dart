import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  "Название".text.make(),
                  "Текст уведомления".text.gray400.softWrap(true).make()
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
