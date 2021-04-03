import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:btb/model/login_model.dart';

class APIProvider {
  static final BASE_URL = "https://innercircle.caapidsimplified.com/api/";
  static final LOGIN_URL = BASE_URL + "login";



  void printWrapped(String text) {
    final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
    pattern.allMatches(text).forEach((match) => print(match.group(0)));
  }

  Future<LoginModel> login(String username, String password) async {
    var response = await http.post(LOGIN_URL, headers: {
      'Content-type': 'application/x-www-form-urlencoded',
    }, body: {
      "email": username,
      "password": password
    });
    if (response.statusCode == 200) {
      if (response.body.isNotEmpty) {
        printWrapped(response.body);
        return LoginModel.fromJson(json.decode(response.body));
      } else {
        return Future.error("No data Found");
      }
    } else {
      return Future.error(response.reasonPhrase);
    }
  }




}