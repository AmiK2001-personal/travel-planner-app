import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travelplanner/domain/entities/personal_info/personal_info.dart';

abstract class UserInfoRemoteDataSource {
  Future<PersonalInfo?> getById(String id);
}

class UserInfoRemoteDataSourceImpl extends UserInfoRemoteDataSource {
  @override
  Future<PersonalInfo?> getById(String id) async {
    final data = (await FirebaseFirestore.instance
            .collection("personal_info")
            .doc(id)
            .get())
        .data();
    if (data != null) {
      return PersonalInfo.fromJson(data);
    }
  }
}
