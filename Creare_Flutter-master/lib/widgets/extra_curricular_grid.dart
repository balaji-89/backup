import 'package:flutter/material.dart';

class ExtraCurricularGrid extends StatelessWidget {
  final String title;
  final String imageUrl;
  final Function handler;

  const ExtraCurricularGrid(this.title, this.imageUrl, this.handler);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: handler,
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.all(5),
        child: Stack(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                child: Image.asset(
                  imageUrl,
                ),
              ),
            ),
            // Positioned(
            //   bottom: 0,
            //   right: 0,
            //   left: 0,
            //   child: ClipRRect(
            //     borderRadius: BorderRadius.only(
            //       bottomLeft: Radius.circular(15),
            //       bottomRight: Radius.circular(15),
            //     ),
            //     child: Container(
            //       alignment: Alignment.center,
            //       color: appWhite,
            //       padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
            //       child: Text(
            //         title,
            //         style: TextStyle(
            //           color: appPrimaryColor,
            //           fontSize: 16,
            //           fontWeight: FontWeight.bold,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
