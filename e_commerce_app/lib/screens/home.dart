
import 'package:e_commerce_app/provider/movies_api_provider.dart';
import 'package:flutter/material.dart';

import 'package:e_commerce_app/widgets/movie_tab.dart';
import 'package:provider/provider.dart';
class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final films =Provider.of<ApiProvider>(context).films;
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body:SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
                 itemCount: films.length,
                 itemBuilder:(context,index)=> MovieTab(
                   title: films[index].title,
                   imagePath: films[index].imagePath,
                   rating: films[index].rating,
                   releaseYear: films[index].releaseYear,
                   genre: films[index].genre,
              ),
            ),
          ),
      );
  }
}