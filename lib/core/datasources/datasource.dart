import 'package:dfunc/dfunc.dart';

import 'id.dart';

abstract class DataSource<T> {
  void create();
  void update(T entity);
  void delete(T entity);
  bool exists(Id id);
  Iterable<T> find(bool Function(T) predicate);
  T? read(Id id);
}
