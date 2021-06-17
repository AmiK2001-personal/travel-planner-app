import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:travelplanner/domain/entities/travel/locations.dart';
import 'package:travelplanner/domain/entities/travel/travel.dart';
import 'package:travelplanner/domain/entities/travel/travellers.dart';
import 'package:tuple/tuple.dart';

abstract class TravelRemoteDataSource {
  Stream<DocumentSnapshot<Map<String, dynamic>>> getById(String userId);
  Stream<QuerySnapshot<Map<String, dynamic>>>? getUserTravels(String userId);
  Future<DocumentReference<Map<String, dynamic>>> createForUserWithId(
      String userId);
  Stream<QuerySnapshot<Map<String, dynamic>>>? getPublicTravels();
  Future<void> addLocation(
      Locations location, List<Locations>? locations, String travelId);
  Future<Travel> addTravel(Travel travel);
}

class TravelRemoteDataSourceImpl extends TravelRemoteDataSource {
  TravelRemoteDataSourceImpl();

  final firestore = FirebaseFirestore.instance;

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
      data = locations.map((e) => e.toJson()).toList();
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
    // final travels = snapshot.data!.docs
    //             .map((e) => Tuple2(e.id, Travel.fromJson(e.data())))
    //             .toList();
    //         final userTravels = travels
    //             .filter((x) => x.item2.travellers!.containsAny(["0", "1", "2"]
    //                 .map((e) => Travellers(
    //                     userId:
    //                         context.read<AuthBloc>().userRepo.getUser()!.uid,
    //                     roleId: e))))
    //             .toList();

    return firestore
        .collection("travels")
        .where("travellers",
            arrayContains: Travellers(roleId: "0", userId: userId).toJson())
        .snapshots();
    // .where('is_public', isEqualTo: true)

    // .map((e) => Tuple2(e., Travel.fromJson(e.data())));
  }

  @override
  Future<Travel> addTravel(Travel travel) async {
    final newTravel = {
      "date": travel.date,
      "description": travel.description,
      "is_public": false,
      "images": travel.images?.map((e) => e.toJson()).toList(),
      "name": travel.name,
      "travellers": travel.travellers?.map((e) => e.toJson()).toList(),
      "goodies": travel.goodies?.map((e) => e.toJson()).toList(),
      "locations": travel.locations?.map((e) => e.toJson()).toList(),
    };
    await firestore.collection("travels").add(newTravel);
    return travel;
  }
}
