import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MovieTab extends StatelessWidget {
  final String title;
  final String imagePath;
  final double rating;
  final int releaseYear;
  final List<String> genre;

  MovieTab(
      {this.title, this.imagePath, this.rating, this.releaseYear, this.genre});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: MediaQuery.of(context).size.height*0.4,
        width: MediaQuery.of(context).size.width*0.95,
        child: LayoutBuilder(builder: (context,constraints){
          return Padding(
            padding: EdgeInsets.only(top: 0.4,bottom: 0.4,left: 0.2,right: 0.2),
            child: Row(
              children: [
                SizedBox(
                  height: constraints.maxHeight*0.95,
                  width: constraints.maxWidth*0.7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        title,style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                      ),
                      Text(
                        releaseYear.toString(),style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                      ),
                      Text(
                        rating.toString(),style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: genre.map((genre) => Text(genre,style: TextStyle(
                          fontSize: 15,
                          color: Colors.green, 
                        ),)).toList(),
                      ),
                    ],
                  ),
                               
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color:Theme.of(context).primaryColor),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Image.network(imagePath,fit: BoxFit.cover,),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
