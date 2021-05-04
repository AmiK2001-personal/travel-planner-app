import 'package:flutter_bloc/flutter_bloc.dart';

import 'menu_page_event.dart';
import 'menu_page_state.dart';

class MenuPageBloc extends Bloc<MenuPageEvent, MenuPageState> {
  MenuPageBloc() : super(const MenuPageState(selectedNavigationBarItemId: 0));

  @override
  void onTransition(Transition<MenuPageEvent, MenuPageState> transition) {
    print(transition);
    super.onTransition(transition);
  }

  @override
  Stream<MenuPageState> mapEventToState(MenuPageEvent event) async* {
    if (event is SelectedNavigationBarItemIdChanged) {
      yield state.copyWith(
          selectedNavigationBarItemId: event.navigationBarItemId);
    }
  }
}
