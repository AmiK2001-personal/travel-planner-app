import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_image.freezed.dart';
part 'firebase_image.g.dart';

enum FirebaseImageType { storge, url }

@freezed
class FirebaseImage with _$FirebaseImage {
  factory FirebaseImage({
    @Default(FirebaseImageType.url)
    @JsonKey(name: 'image_type')
        FirebaseImageType imageType,
    @Default("") @JsonKey(name: 'path') String path,
  }) = _FirebaseImage;

  factory FirebaseImage.fromJson(Map<String, dynamic> json) =>
      _$FirebaseImageFromJson(json);
}

Future<String> getImageUrl(String path) async {
  return FirebaseStorage.instance.ref("images").child(path).getDownloadURL();
}

Future<String?> getUrl(FirebaseImage firebaseImage) async {
  if (firebaseImage.imageType == FirebaseImageType.url) {
    return firebaseImage.path;
  } else if (firebaseImage.imageType == FirebaseImageType.storge) {
    return getImageUrl(firebaseImage.path);
  }
}
