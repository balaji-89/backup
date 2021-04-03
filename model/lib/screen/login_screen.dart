import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:model/screen/home_page.dart';

class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(//first Container
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(bottom: 66, left: 66),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Supplier',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              top: -200,
              child: Container(//SecondContainer
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                  ),
                ),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  padding: EdgeInsets.only(bottom: 60, left: 60),
                  alignment: Alignment.bottomLeft,
                  child: InkWell(
                    onTap:()=> Navigator.push(context,MaterialPageRoute(builder: (_)=>HomePage(),),
                    ),
                    child: Text(
                      'Employee',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),//Second Container
            ),


            Positioned(//thirdContainer
              top: -375,
              child: Container(//SecondContainer
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                  ),
                ),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children:[
                    Row(children:[Container(
                      padding: EdgeInsets.only(bottom: 100, left: 35),

                      child: Text('LOG IN AS', style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color:  Colors.black,
                      ),),
                    ),Container( padding: EdgeInsets.only(bottom: 100, left:10),child: Icon(Icons.arrow_forward)),] ,),
                    Container(
                      padding: EdgeInsets.only(bottom: 50, left: 65),
                      alignment: Alignment.bottomLeft,
                      child: Text(
                      'Admin',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color:  Colors.black,
                      ),
                  ),
                    ),],
                ),
              ),//Second Container
            ),
          ],
        ),
      ),//firstContainer
    );
  }
}
