import 'package:freezed_annotation/freezed_annotation.dart';

part 'exceptions.freezed.dart';

@freezed
class AppException extends Exception with _$AppException {
  const factory AppException.serverException() = ServerException;
  const factory AppException.cacheException() = CacheException;
}
