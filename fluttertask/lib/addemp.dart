import 'package:flutter/material.dart';

import 'package:hive/hive.dart';
import 'empclass.dart';

class EmpApp extends StatefulWidget {
  @override
  EmpAppState createState() => EmpAppState();
}

class EmpAppState extends State<EmpApp> {
  final formkey = GlobalKey<FormState>();
  String empname;
  String empage;
  String empcity;

  bool val = false;
  bool val1 = false;
  bool val2 = false;
  bool val3 = false;
  bool val4 = false;

  void addempdb(Empcls empdata) {
    final empbox = Hive.box('Empcls');
    empbox.add(empdata);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // leading: IconButton(
          //   icon: Icon(Icons.arrow_back),
          //   onPressed: () {
          //     // Navigator.pop(context);

          //   }
          // ),
            title: Text("Add Employee",
                style: new TextStyle(color: Colors.white38)),
            actions: <Widget>[
              // InkWell(
              //   child: Padding(
              //     padding:
              //         const EdgeInsets.only(top: 13.0, right: 20.0, left: 25.0),
              //     child: Text(
              //       "Save",
              //       style: TextStyle(fontSize: 23.0),
              //     ),
              //   ),
              //   onTap: () {
              //     formkey.currentState.save();
              //     final newemp = Empcls(empname, int.parse(empage), empcity);
              //     addempdb(newemp);
              //   },
              // )
              IconButton(
                  icon: Icon(Icons.save),
                  onPressed: () {

                    getdata();
                  }),
            ]),
        body: Form(
          key: formkey,
          child: ListView(children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Employee Name",
                  style: new TextStyle(
                      fontSize: 25.0, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 20.0),
              child: TextFormField(
                  maxLength: 16,
                  onSaved: (value) => empname = value,
                  decoration: new InputDecoration(
//            icon:Icon(Icons.account_circle,color: Colors.black26),
                      hintText: "Enter Name Here",
                      hintStyle:
                      TextStyle(color: Colors.black26, fontSize: 20.0))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Age",
                  style: new TextStyle(
                      fontSize: 25.0, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 20.0),
              child: TextFormField(
                  maxLength: 2,
                  onSaved: (value) => empage = value,
                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(
//            icon:Icon(Icons.account_circle,color: Colors.black26),
                      hintText: "  Enter Age",
                      hintStyle:
                      TextStyle(color: Colors.black26, fontSize: 20.0))),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("City",
                  style: new TextStyle(
                      fontSize: 25.0, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 20.0),
              child: TextFormField(
                  maxLength: 15,
                  onSaved: (value) => empcity = value,
                  decoration: new InputDecoration(
//            icon:Icon(Icons.account_circle,color: Colors.black26),
                      hintText: " Enter City",
                      hintStyle:
                      TextStyle(color: Colors.black26, fontSize: 20.0))),
            ),
            SwitchListTile(
              value: val,
              onChanged: (bool newval) {
                setState(() {
                  val = newval;
                });
              },
              title:
              new Text("IsTeamLead", style: new TextStyle(fontSize: 20.0)),
            ),
            Row(
              //  mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.only(
                          top: 25.0, right: 35.0, left: 50.0),
                      child: InputChip(
                        label: new Text("Team A"),
                        selected: val1,
                        selectedColor: Colors.blue,
                        onSelected: (bool sel) {
                          setState(() {
                            val1 = sel;
                          });
                        },
                      )),
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0, left: 25.0),
                    child: InputChip(
                      label: new Text("Team B"),
                      selected: val2,
                      selectedColor: Colors.blue,
                      onSelected: (bool sel2) {
                        setState(() {
                          val2 = sel2;
                        });
                      },
                    ),
                  )
                ]),
            Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, right: 35.0, left: 50.0),
                    child: InputChip(
                      label: new Text("Team C"),
                      shadowColor: Colors.transparent,
                      selected: val3,
                      selectedColor: Colors.blue,
                      onSelected: (bool sel3) {
                        setState(() {
                          val3 = sel3;
                        });
                      },
                    )),
                Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 25.0),
                    child: InputChip(
                      label: new Text("Team D"),
                      selected: val4,
                      selectedColor: Colors.blue,
                      onSelected: (bool sel4) {
                        setState(() {
                          val4 = sel4;
                        });
                      },
                    )),
              ],
            ),
          ]),
        ));
  }

  @override
  void getdata() {
    formkey.currentState.save();
    final newContact = Empcls(empname, int.parse(empage), empcity);
    return addempdb(newContact);
  }
}