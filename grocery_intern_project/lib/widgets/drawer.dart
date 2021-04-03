import 'package:flutter/material.dart';
import 'package:grocery_intern_project/provider/drawer_data.dart';
import 'package:provider/provider.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List drawerData = [];
    final mediaQuery = MediaQuery.of(context).size;

    return SizedBox(
      width: mediaQuery.width * 0.67,
      child: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 38,
              width: 60,
              child: Center(
                child: Text(
                  'Menu',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            drawerData.isEmpty
                ? FutureBuilder(
                    future:
                        Provider.of<DrawerProvider>(context).initializeList(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting)
                        return SizedBox(
                          height: mediaQuery.height * 0.8,
                          child: Center(
                            child: CircularProgressIndicator(),
                          ),
                        );
                      else {
                        drawerData =
                            Provider.of<DrawerProvider>(context).drawerItems;
                        return SizedBox(
                          height: mediaQuery.height * 0.8,
                          child: ListView.separated(
                            separatorBuilder: (context, index) => Padding(
                                padding: EdgeInsets.only(left: 10, right: 15),
                                child: Divider()),
                            itemCount: drawerData.length,
                            itemBuilder: (context, index) => Container(
                              height: mediaQuery.height * 0.06,
                              margin: EdgeInsets.only(left: 10, top: 4),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                drawerData[index],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54,
                                  fontSize: 15,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        );
                      }
                    })
                : SizedBox(
                    height: mediaQuery.height * 0.8,
                    child: ListView.separated(
                      separatorBuilder: (context, index) => Padding(
                          padding: EdgeInsets.only(left: 10, right: 15),
                          child: Divider()),
                      itemCount: drawerData.length,
                      itemBuilder: (context, index) => Container(
                        height: mediaQuery.height * 0.06,
                        margin: EdgeInsets.only(left: 10, top: 4),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          drawerData[index],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                            fontSize: 15,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
