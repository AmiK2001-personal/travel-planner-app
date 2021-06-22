import 'package:dfunc/dfunc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../error/failures.dart';

part 'usecase.freezed.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

@freezed
class NoParams with _$NoParams {
  factory NoParams() = _NoParams;
}
