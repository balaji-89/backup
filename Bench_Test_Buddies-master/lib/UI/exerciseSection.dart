// import 'package:flutter/material.dart';
// import 'package:im_stepper/stepper.dart';
// import 'package:grouped_list/grouped_list.dart';
//
// class exerciseSectionScreen extends StatefulWidget {
//   const exerciseSectionScreen({Key key}) : super(key: key);
//
//   @override
//   exerciseSectionScreenState createState() => exerciseSectionScreenState();
// }
//
// class exerciseSectionScreenState extends State<exerciseSectionScreen>
//     with SingleTickerProviderStateMixin {
//   final List<Tab> TabsList = <Tab>[
//     new Tab(text: 'Section'),
//     new Tab(text: 'Attempts'),
//     new Tab(text: 'Bookmarks'),
//   ];
//   TabController _tabController;
//   int _currentstep = 0;
//   List ExerciseSections = [
//     {'name': 'Start the exercise', 'group': 'Current Section'},
//     {'name': 'Uploaded images', 'group': 'Upcoming Section'},
//     {'name': 'Evaluate the results', 'group': 'Upcoming Section'},
//     {'name': 'View the results', 'group': 'Upcoming Section'},
//   ];
//
//   @override
//   void initState() {
//     super.initState();
//     _tabController = new TabController(vsync: this, length: TabsList.length);
//   }
//
//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       backgroundColor: Colors.grey,
//       appBar: new AppBar(
//           iconTheme: IconThemeData(
//             color: Color(0xFF1a1a4b),
//           ),
//           centerTitle: true,
//           title: Text(
//             'Exercise Section',
//             style: TextStyle(color: Color(0xFF1a1a4b)),
//           ),
//           backgroundColor: Colors.white,
//           bottom: new TabBar(
//             controller: _tabController,
//             tabs: TabsList,
//             indicatorColor: Color(0xFF4667EE),
//             labelColor: Color(0xFF1a1a4b),
//           )),
//       body: new TabBarView(
//           controller: _tabController,
//           children: <Widget>[sectionTab(), sectionTab(), sectionTab()]),
//     );
//   }
//
//   gettabScreen(int pos) {
//     switch (pos) {
//       case 1:
//         return sectionTab();
//       case 2:
//         return sectionTab();
//       case 3:
//         return sectionTab();
//       default:
//         return sectionTab();
//     }
//   }
//
//   Widget sectionTab() {
//     return Column(children: <Widget>[
//       Container(
//         height: 60,
//         color: Colors.white,
//         padding: EdgeInsets.all(10),
//         child: Center(
//           child: Text("Class 1 Amalgam Activity",
//               style: TextStyle(
//                 fontFamily: 'SF Pro Text',
//                 fontSize: 16,
//                 color: const Color(0xff232323),
//                 fontWeight: FontWeight.w600,
//                 height: 1.3333333333333333,
//               )),
//         ),
//       ),
//       SizedBox(
//         height: 10,
//       ),
//       Container(
//         height: 120,
//         color: Colors.white,
//         child: NumberStepper(
//           stepRadius: 15,
//           enableNextPreviousButtons: false,
//           numbers: [
//             1,
//             2,
//             3,
//             4,
//           ],
//           direction: Axis.horizontal,
//           numberStyle: TextStyle(color: Colors.white),
//         ),
//       ),
//       SizedBox(
//         height: 10,
//       ),
//       Expanded(
//         child: GroupedListView<dynamic, String>(
//           elements: ExerciseSections,
//           groupBy: (element) => element['group'],
//           groupComparator: (value1, value2) => value2.compareTo(value1),
//           itemComparator: (item1, item2) =>
//               item1['name'].compareTo(item2['name']),
//           order: GroupedListOrder.DESC,
//           useStickyGroupSeparators: true,
//           groupSeparatorBuilder: (String value) => Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text(
//               value,
//               textAlign: TextAlign.center,
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//           ),
//           itemBuilder: (c, element) {
//             return Card(
//               elevation: 8.0,
//               margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
//               child: Container(
//                 child: ListTile(
//                   contentPadding:
//                   EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
//                   leading: Icon(Icons.account_circle),
//                   title: Text(element['name']),
//                   trailing: Icon(Icons.arrow_forward),
//                 ),
//               ),
//             );
//           },
//         ),
//       )
//
//     ]);
//   }
// }
