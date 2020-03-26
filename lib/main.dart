import 'package:flutter/material.dart';
import 'package:flutter_get_it/injector.dart';
import 'package:flutter_get_it/login_service.dart';
import 'package:flutter_get_it/user_profile.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //* factory
  UserProfile userService = locator<UserProfile>();
  UserProfile userService2 = locator<UserProfile>();

  //* singleton
  LoginService loginService = locator<LoginService>();
  LoginService loginService2 = locator<LoginService>();

  @override
  Widget build(BuildContext context) {
    userService2.name = 'Linus Torvalds';
    userService2.username = 'linux';
    loginService.accessToken = 'ini_access_token_baru';

    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dependency Injection'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Name: ${userService.name}'),
              Text('Name 2: ${userService2.name}'),
              SizedBox(
                height: 16,
              ),
              Text('Username: ${userService.username}'),
              Text('Username 2: ${userService2.username}'),
              SizedBox(
                height: 16,
              ),
              Text('Access Token: ${loginService.accessToken}'),
              Text('Access Token 2: ${loginService2.accessToken}'),
            ],
          ),
        ),
      ),
    );
  }
}
