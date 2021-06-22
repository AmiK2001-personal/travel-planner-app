import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:travelplanner/data/repositories/user_info_remote_data_source.dart';
import 'package:travelplanner/domain/entities/travel/locations.dart';
import 'package:travelplanner/domain/entities/travel/travel.dart';
import 'package:travelplanner/domain/entities/travel/travellers.dart';
import 'package:kt_dart/kt.dart';

abstract class TravelRemoteDataSource {
  Stream<DocumentSnapshot<Map<String, dynamic>>> getById(String userId);
  Stream<QuerySnapshot<Map<String, dynamic>>>? getUserTravels(String userId);
  Future<DocumentReference<Map<String, dynamic>>> createForUserWithId(
      String userId);
  Stream<QuerySnapshot<Map<String, dynamic>>>? getPublicTravels();
  Future<void> addLocation(
      Locations location, List<Locations>? locations, String travelId);
  Future<Travel> addTravel(Travel travel);
  Stream<DocumentSnapshot<Map<String, dynamic>>> fetchTravel(String travelId);
  Future<Travel> importTravel(Travel travel, String? uid);
  Future<void> addTraveller(
      String email, List<Travellers>? travellers, String travelId);

  Future<void> removeTraveller(String userId, String travelId);
}

class TravelRemoteDataSourceImpl extends TravelRemoteDataSource {
  TravelRemoteDataSourceImpl();

  final firestore = FirebaseFirestore.instance;
  UserInfoRemoteDataSource userInfoRemoteDataSource = Get.find();

  @override
  Stream<DocumentSnapshot<Map<String, dynamic>>> getById(String userId) {
    return firestore.collection("travels").doc(userId).snapshots();
  }

  @override
  Future<DocumentReference<Map<String, dynamic>>> createForUserWithId(
      String userId) async {
    final travel = {
      "name": "Без названия",
      "travellers": [
        Travellers(roleId: "0", userId: userId).toJson(),
      ],
      "is_public": false
    };
    return firestore.collection("travels").add(travel);
  }

  @override
  Stream<QuerySnapshot<Map<String, dynamic>>>? getPublicTravels() {
    return firestore
        .collection("travels")
        .where('is_public', isEqualTo: true)
        .snapshots();
  }

  @override
  Future<void> addLocation(
      Locations location, List<Locations>? locations, String travelId) async {
    Map<String, dynamic> locationToJson(Locations location) {
      return {
        "name": location.name,
        "geopoint": {
          "latitude": location.geopoint!.latitude,
          "longitude": location.geopoint!.longitude
        }
      };
    }

    var data = List<Map<String, dynamic>>.empty(growable: true);
    if (locations != null) {
      data = locations.map((e) => locationToJson(e)).toList();
      data.add(locationToJson(location));
    } else {
      data = [locationToJson(location)];
    }
    return FirebaseFirestore.instance
        .collection("travels")
        .doc(travelId)
        .update({"locations": data});
  }

  @override
  Stream<QuerySnapshot<Map<String, dynamic>>>? getUserTravels(String userId) {
    return firestore
        .collection("travels")
        .where("travellers",
            arrayContains: Travellers(roleId: "0", userId: userId).toJson())
        .snapshots();
  }

  @override
  Stream<DocumentSnapshot<Map<String, dynamic>>> fetchTravel(String travelId) {
    return FirebaseFirestore.instance
        .collection("travels")
        .doc(travelId)
        .snapshots();
  }

  @override
  Future<Travel> addTravel(Travel travel) async {
    final newTravel = {
      "date": travel.date,
      "description": travel.description,
      "is_public": false,
      "images": travel.images,
      "name": travel.name,
      "travellers": travel.travellers?.map((e) => e.toJson()).toList(),
      "goodies": travel.goodies?.map((e) => e.toJson()).toList(),
      "locations": travel.locations?.map((e) => e.toJson()).toList(),
    };
    await firestore.collection("travels").add(newTravel);
    return travel;
  }

  @override
  Future<Travel> importTravel(Travel travel, String? uid) {
    final newTravel =
        travel.copyWith(travellers: [Travellers(userId: uid, roleId: "0")]);
    return addTravel(newTravel);
  }

  @override
  Future<void> addTraveller(
      String email, List<Travellers>? travellers, String travelId) async {
    var data = List<Map<String, dynamic>>.empty();
    final userInfos = (await userInfoRemoteDataSource.getAll()).kt;
    final user = userInfos.find((x) => x.login == email);
    if (user != null) {
      if (travellers != null) {
        data = travellers.kt
            .plusElement(Travellers(roleId: "2", userId: user.userId))
            .map((e) => e.toJson())
            .asList();
      } else {
        data = [Travellers(roleId: "2", userId: user.userId).toJson()];
      }
      return FirebaseFirestore.instance
          .collection("travels")
          .doc(travelId)
          .update({"travellers": data});
    }
  }

  @override
  Future<void> removeTraveller(String userId, String travelId) async {
    final oldTravel = await getById(userId).first.then((value) {
      final data = value.data();
      if (data != null) {
        return Travel.fromJson(data);
      } else {
        return null;
      }
    });

    if (oldTravel != null) {
      final travellers = oldTravel.travellers!.kt;
      travellers.removeAllWhere((x) => x.userId == userId);

      return FirebaseFirestore.instance
          .collection("travels")
          .doc(travelId)
          .update({"travellers": travellers.map((e) => e.toJson()).asList()});
    }
  }
}
