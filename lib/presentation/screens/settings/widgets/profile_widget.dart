import 'package:flutter/material.dart';
import 'package:travelplanner/presentation/utils/assets.gen.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfileWidget extends StatelessWidget {
  final Image? image;
  final bool isEdit;
  final VoidCallback onClicked;

  const ProfileWidget({
    Key? key,
    this.image,
    this.isEdit = false,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          buildImage(),
        ],
      ),
    );
  }

  Widget buildImage() {
    return ClipOval(
        child: CircleAvatar(
      backgroundColor: Colors.grey[100],
      child: image ?? Assets.icons.uniconsLine.user.svg(width: 128).centered(),
    ).wh(128, 128));
  }

  Widget buildEditIcon(Color color) => buildCircle(
        color: Colors.white,
        all: 3,
        child: buildCircle(
          color: color,
          all: 8,
          child: Icon(
            isEdit ? Icons.add_a_photo : Icons.edit,
            color: Colors.white,
            size: 20,
          ),
        ).onInkTap(onClicked),
      );

  Widget buildCircle({
    required Widget child,
    required double all,
    required Color color,
  }) =>
      ClipOval(
        child: Container(
          padding: EdgeInsets.all(all),
          color: color,
          child: child,
        ),
      );
}
