import 'package:flutter/material.dart';
import 'package:travelplanner/data/repositories/travel_remote_data_source.dart';
import 'package:travelplanner/domain/entities/travel/travel.dart';
import 'package:travelplanner/presentation/screens/travel_details/pages/group_page/utils/utils.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart' hide ContextExtensionss;
import 'package:travelplanner/data/repositories/user_info_remote_data_source.dart';

final UserInfoRemoteDataSource travelRemoteDataSource =
    Get.find<UserInfoRemoteDataSource>();
final TravelRemoteDataSource travelDataSource = Get.find();

Future<Widget> buildMemberCard(
    BuildContext context, String userId, String roleId, String travelId) async {
  final personalInfo = await travelRemoteDataSource.getById(userId);
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      VStack([
        personalInfo!.login!.text.subtitle2(context).make(),
      ]),
      roleIdToString(roleId).text.make(),
      // if (roleId != "0") // Is not admin
      //   IconButton(
      //     onPressed: () async {
      //       await travelDataSource.removeTraveller(userId, travelId);
      //     },
      //     icon: const Icon(
      //       Icons.delete_forever_rounded,
      //       color: Colors.red,
      //     ),
      //   )
    ],
  ).box.margin(const EdgeInsets.all(10)).make().card.make();
}

Widget buildMembersListView(
    BuildContext context, Travel travel, String travelId) {
  return ListView.builder(
    itemBuilder: (context, index) {
      return FutureBuilder<Widget>(
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return snapshot.data!;
          } else if (snapshot.hasError) {
            return const SizedBox();
          } else {
            return const CircularProgressIndicator();
          }
        },
        future: buildMemberCard(context, travel.travellers![index].userId!,
            travel.travellers![index].roleId!, travelId),
      );
    },
    itemCount: travel.travellers!.length,
  );
}
