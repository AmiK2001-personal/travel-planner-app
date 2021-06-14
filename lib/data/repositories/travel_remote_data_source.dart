import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travelplanner/domain/entities/travel/locations.dart';
import 'package:travelplanner/domain/entities/travel/travellers.dart';

abstract class TravelRemoteDataSource {
  Stream<QuerySnapshot<Map<String, dynamic>>>? getById(String userId);
  Future<DocumentReference<Map<String, dynamic>>> createForUserWithId(
      String userId);
  Stream<QuerySnapshot<Map<String, dynamic>>>? getPublicTravels();
  Future<void> addLocation(
      Locations location, List<Locations>? locations, String travelId);
}

class TravelRemoteDataSourceImpl extends TravelRemoteDataSource {
  TravelRemoteDataSourceImpl();

  final firestore = FirebaseFirestore.instance;

  @override
  Stream<QuerySnapshot<Map<String, dynamic>>>? getById(String userId) {
    return firestore.collection("travels").snapshots();
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
}
