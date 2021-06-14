import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_page_event.freezed.dart';

@freezed
class MenuPageEvent with _$MenuPageEvent {
  const factory MenuPageEvent.selectedNavigationBarItemIdChanged(
      int navigationBarItemId) = SelectedNavigationBarItemIdChanged;
}
