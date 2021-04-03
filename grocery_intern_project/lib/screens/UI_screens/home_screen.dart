import 'package:flutter/material.dart';
import 'package:grocery_intern_project/provider/category.dart';
import 'package:grocery_intern_project/provider/products.dart';
import 'package:grocery_intern_project/widgets/drawer.dart';
import 'package:grocery_intern_project/widgets/single_product_card.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    final themeData = Theme.of(context);
    final categoryList =
        Provider.of<CategoryList>(context, listen: false).categoryList;
    final products = Provider.of<Products>(context).products;
    final reversedList =
        (Provider.of<Products>(context).products).reversed.toList();

    return Scaffold(
      drawer: CustomDrawer(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(
              'Grocery Shop',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            actions: [
              IconButton(icon: Icon(Icons.search), onPressed: () {}),
              IconButton(
                  icon: Icon(Icons.shopping_cart_outlined), onPressed: () {}),
            ],
            titleSpacing: 0.2,
            floating: true,
            centerTitle: true,
            elevation: 0.6,
          ),
          SliverList(
              delegate: SliverChildListDelegate(
            [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 6.0, horizontal: 6),
                child: SizedBox(
                  height: mediaQuery.height * 0.07,
                  width: mediaQuery.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'All Categories',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      FlatButton(
                          onPressed: () {},
                          child: Text(
                            'View all >>',
                            style: TextStyle(color: themeData.primaryColor),
                          ))
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: SizedBox(
                  height: mediaQuery.height * 0.12,
                  width: mediaQuery.width,
                  child: ListView.builder(
                      padding: EdgeInsets.all(0),
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: CustomCircleCard(
                              receivedIcon: categoryList[index]['icon'],
                              heading: categoryList[index]['heading']),
                        );
                      }),
                ),
              ),
              SizedBox(
                height: mediaQuery.height * 0.35,
                width: mediaQuery.width,
                child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Hot Deals',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              FlatButton(
                                  onPressed: () {},
                                  child: Text(
                                    'View all >>',
                                    style: TextStyle(
                                        color: themeData.primaryColor),
                                  ))
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: ListView.builder(
                              padding: EdgeInsets.all(0),
                              physics: NeverScrollableScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                return SingleProductCard(
                                  imagePath: products[index].imagePath,
                                  prodName: products[index].prodName,
                                  prodRate: products[index].prodRate,
                                  discount: products[index].discount,
                                );
                              }),
                        )
                      ],
                    )),
              ),
              SizedBox(
                height: mediaQuery.height * 0.34,
                width: mediaQuery.width,
                child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Drinks Parol',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              FlatButton(
                                  onPressed: () {},
                                  child: Text(
                                    'View all >>',
                                    style: TextStyle(
                                        color: themeData.primaryColor),
                                  ))
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: ListView.builder(
                              padding: EdgeInsets.all(0),
                              physics: NeverScrollableScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                return SingleProductCard(
                                  imagePath: reversedList[index].imagePath,
                                  prodName: reversedList[index].prodName,
                                  prodRate: reversedList[index].prodRate,
                                  discount: reversedList[index].discount,
                                );
                              }),
                        )
                      ],
                    )),
              ),
            ],
          )),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Theme.of(context).backgroundColor,
          currentIndex: 0,
          elevation: 0.5,
          selectedItemColor: Theme.of(context).primaryColor,
          selectedIconTheme:
              IconThemeData(color: Theme.of(context).primaryColor, size: 22),
          unselectedIconTheme: IconThemeData(color: Colors.black54, size: 18),
          selectedLabelStyle: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 13,
              fontWeight: FontWeight.bold),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              activeIcon: Icon(Icons.home_filled),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_outlined,
              ),
              activeIcon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
              ),
              activeIcon: Icon(Icons.favorite),
              label: 'Favourite',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
              ),
              activeIcon: Icon(Icons.person),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              activeIcon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ]),
    );
  }
}

class CustomCircleCard extends StatelessWidget {
  final IconData receivedIcon;
  final String heading;
  CustomCircleCard({@required this.receivedIcon, @required this.heading});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(70)),
          color: Theme.of(context).backgroundColor,
          margin: EdgeInsets.only(left: 5, right: 5, bottom: 5),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              receivedIcon,
              size: 40,
              color: Colors.black54,
            ),
          ),
        ),
        Text(
          heading,
          style: TextStyle(color: Colors.black, fontSize: 12),
        )
      ],
    );
  }
}
