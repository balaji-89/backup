import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,

        decoration: BoxDecoration(
            color: Colors.red,
          gradient: LinearGradient(colors: [
            Colors.red,
            Colors.red.withOpacity(0.9),
            Colors.red.withOpacity(0.5),


          ])
        ),
        child: Stack(children: [
          Positioned(
            //thirdPurpleContainer
            top: -50,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient:LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Colors.black,
                      Colors.black54,
                      Colors.black26

                    ]
                ),
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 1,
                    blurRadius: 2,

                  ),
                ],
              ),
              child: Row(
                children: [Align(
                  alignment: Alignment.bottomCenter, //(199,127,194)
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 40, left: 60),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Today 5:30 PM',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Site C',
                          style: TextStyle(
                            fontSize: 60,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.person_pin_circle,
                                color: Color.fromRGBO(191, 115, 186, 5),
                              ),
                            ),
                            Text(
                              '   10054 Workers Present',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                  Container(
                    height: 50,
                    width: 20,

                    
                    child: Image.asset('images/building.jpeg',fit: BoxFit.fill,),
                  ),
              ],
              ),
            ),
          ),
          Positioned(
            //thirdPurpleContainer
            top: -220,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient:LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.blueAccent,
                        Colors.lightBlue,

                        Colors.lightBlueAccent,



                      ]
                  ),
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      spreadRadius: 1,
                      blurRadius: 2,

                    ),
                  ]),
              child: Align(
                alignment: Alignment.bottomCenter, //(199,127,194)
                child: Padding(
                  padding: EdgeInsets.only(bottom: 40, left: 57),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Today 5:30 PM',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Site B',
                        style: TextStyle(
                          fontSize: 60,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.person_pin_circle,
                              color: Color.fromRGBO(191, 115, 186, 5),
                            ),
                          ),
                          Text(
                            '   10054 Workers Present',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            //secondContainer
            top: -400,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient:LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.pink.withOpacity(0.9),
                        Colors.pinkAccent.withOpacity(0.6),

                      ]
                  ),
                  color: Colors.pink,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1,
                      blurRadius: 2,

                    ),

                  ]
              ),
              child: Align(
                alignment: Alignment.bottomLeft, //(199,127,194)
                child: Padding(
                  padding: EdgeInsets.only(bottom: 35, left: 55),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Today 3:30 PM',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Site A',
                        style: TextStyle(
                          fontSize: 60,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.person_pin_circle,
                              color: Color.fromRGBO(191, 115, 186, 5),
                            ),
                          ),
                          Text(
                            '   8056 Workers Present',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: -550,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,

              decoration: BoxDecoration(

                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius:2,
                      spreadRadius:1,
                    ),

                  ]

              ),
              child: Align(
                alignment: Alignment.bottomCenter, //(199,127,194)
                child: Padding(
                  padding: EdgeInsets.only(bottom: 40, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Color.fromRGBO(191, 115, 186, 5),
                        child: Icon(
                          Icons.person_outline,
                          size: 40,
                        ),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Color.fromRGBO(191, 115, 186, 5),
                        child: Icon(
                          Icons.mode_comment,
                          size: 33,
                        ),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Color.fromRGBO(191, 115, 186, 5),
                        child: Icon(
                          Icons.search,
                          size: 40,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
