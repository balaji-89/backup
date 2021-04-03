import 'package:flutter/material.dart';

class SingleProductCard extends StatelessWidget {
  final String imagePath;
  final double discount;
  final String prodName;
  final double prodRate;

  SingleProductCard({
    @required this.imagePath,
    this.discount,
    @required this.prodName,
    @required this.prodRate,
  });
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Container(
      height: mediaQuery.height * 0.32,
      width: mediaQuery.width * 0.5,
      color: Colors.transparent,
      padding: EdgeInsets.symmetric(vertical: 1.8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: mediaQuery.height * 0.2,
              width: mediaQuery.width * 0.43,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[400],
                        spreadRadius: 3,
                        blurRadius: 1),
                    BoxShadow(
                        color: Colors.grey[200], spreadRadius: 1, blurRadius: 1)
                  ],
                  color: Theme.of(context).backgroundColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Stack(
                children: [
                  Image.asset(
                    imagePath,
                    fit: BoxFit.contain,
                  ),
                  Positioned(
                      left: 10,
                      top: 10,
                      child: Container(
                        padding: EdgeInsets.all(2.5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black.withOpacity(0.4),
                        ),
                        child: Text(
                          discount.toString(),
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      )),
                  Positioned(
                    right: 10,
                    bottom: 10,
                    child: Icon(
                      Icons.favorite_outline,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  prodName,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  ' Rs ${prodRate.toString()}',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 15),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
