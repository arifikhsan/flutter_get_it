import 'package:flutter_get_it/login_service.dart';
import 'package:flutter_get_it/user_profile.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  // Register Login Service as Singleton
  locator.registerSingleton(LoginService());

  // Register UserProfile as Factory
  locator.registerFactory(() => UserProfile());
}
