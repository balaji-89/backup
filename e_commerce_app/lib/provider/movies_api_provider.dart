import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class ApiModel {
  final String title;
  final String imagePath;
  final double rating;
  final int releaseYear;
  final List<String> genre;

  ApiModel(
      {this.title, this.imagePath, this.rating, this.releaseYear, this.genre});
}

class ApiProvider with ChangeNotifier {

  final apiUrl = 'http://api.androidhive.info/json/movies.json';

  List<ApiModel> _films = [];


  List<ApiModel> get films{
    return [..._films];
  }

  Future<void> initializingApi() async {
    final response = await http.get(apiUrl);
    final  apiData = json.decode(response.body) as List;
    apiData.map((data) {
      _films.add(
        ApiModel(
            title: data['title'],
            imagePath: data['image'],
            rating: data['rating'].toDouble(),
            releaseYear: data['releaseYear'],
            genre: [...data['genre']]),
      );
    }).toList();
    print('ok');
  }

}
