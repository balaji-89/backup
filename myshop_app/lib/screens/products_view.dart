import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import '../models/items.dart';

class ProductsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final providerItem= Provider.of<Items>(context);
    final dummyData=providerItem.getItems;
    return GridView.builder(itemCount: dummyData.length,
      itemBuilder: (BuildContext ctx, index) {
        return Card(
          elevation: 5,
          child: Container(
            padding: EdgeInsets.all(7),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(11),
            ),
            child: GridTile(
              child: Image.asset(dummyData[index].imageUrl),
              footer: GridTileBar(
                backgroundColor: Colors.black38,
                title: Text(dummyData[index].title),
                trailing: Row(

                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.shopping_cart,
                        color: Theme.of(context).accentColor,
                      ),
                      onPressed: (){},
                    ),
                    SizedBox(width: 3,),
                    IconButton(
                      icon: Icon(
                        Icons.favorite_border,
                        color: Theme.of(context).accentColor,
                      ),
                      onPressed: (){},
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 3/2,crossAxisSpacing: 15,mainAxisSpacing: 11),
    );
  }
}
