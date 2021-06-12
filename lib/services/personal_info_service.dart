import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travelplanner/models/gen/personal_info/personal_info.dart';

class PersonalInfoService {
  Future<PersonalInfo?> fetchUserPersonalInfo(String id) async {
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
