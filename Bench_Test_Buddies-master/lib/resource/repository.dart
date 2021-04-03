import 'dart:async';

import 'package:btb/resource/ApiProvider.dart';
import 'package:btb/model/login_model.dart';

class Repository {
  final apiProvider = APIProvider();

  Future<LoginModel> doLogin(String userName, String password) =>
      apiProvider.login(userName, password).then((value) {
        return value;
      }).catchError((error) {
        return throw error;
      });


}