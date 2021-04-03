import 'package:flutter/material.dart';
import './models/items.dart';
import'package:provider/provider.dart';
import './screens/products_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    enum popUpSelection(){
      Favourities
      showingAll;

    }

    return ChangeNotifierProvider(
      builder: (context)=>Items(),

      child: MaterialApp(

        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.green,
          accentColor:Colors.red,

        ),
        home: Scaffold(
          appBar: AppBar(title: Text('MyShop'),
        actions: <Widget>[
          PopupMenuButton(child:Icon(Icons.more_vert),itemBuilder: (ctx)=>[
            PopupMenuItem(child: Text('Show Favourities'),value:popUpSelection.Favourities,),
            PopupMenuItem(child: Text('Show All'),value: 1,)

          ])
        ],),
          body:ProductsView(),

      ),),
    );
  }
}

