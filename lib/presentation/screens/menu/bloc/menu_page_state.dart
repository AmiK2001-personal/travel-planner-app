import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_page_state.freezed.dart';

@freezed
class MenuPageState with _$MenuPageState {
  const factory MenuPageState({@Default(0) int selectedNavigationBarItemId}) =
      _MenuPageState;
}
