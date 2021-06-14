import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travelplanner/data/repositories/travel_remote_data_source.dart';
import 'package:travelplanner/data/repositories/user_info_remote_data_source.dart';
import 'package:travelplanner/presentation/screens/menu/bloc/bloc.dart';
import 'package:travelplanner/presentation/screens/signin/bloc/bloc.dart';
import 'package:travelplanner/presentation/services/theme_service.dart';

import 'presentation/screens/signup/bloc/auth_bloc.dart';

Future<void> init() async {
  //! External
  Get.lazyPut(() async => SharedPreferences.getInstance());
  Get.put(() => FirebaseFirestore.instance);
  Get.put(ThemeService());

  //! Blocs
  Get.lazyPut(() => AuthBloc());
  Get.lazyPut(() => LoginFormBloc());
  Get.lazyPut(() => MenuPageBloc());

  //! Data sources
  Get.lazyPut<TravelRemoteDataSource>(
    () => TravelRemoteDataSourceImpl(),
  );
  Get.lazyPut<UserInfoRemoteDataSource>(
    () => UserInfoRemoteDataSourceImpl(),
  );
}
