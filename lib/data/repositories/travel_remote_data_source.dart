import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:travelplanner/domain/entities/travel/locations.dart';
import 'package:travelplanner/domain/entities/travel/message.dart';
import 'package:travelplanner/domain/entities/travel/travel.dart';
import 'package:travelplanner/domain/entities/travel/travellers.dart';
import 'package:travelplanner/presentation/screens/messages/messages.dart';

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
  Future<List<Message>?> getMessages(String chatlId);
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
      "images": travel.images?.map((e) => e.toJson()).toList(),
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
  Future<List<Message>?> getMessages(String chatId) async {
    return firestore
        .collection("messages")
        .doc(chatId)
        .get()
        .then((value) => (value.data()!["messages"] ?? []) as List<Message>);
  }
}
