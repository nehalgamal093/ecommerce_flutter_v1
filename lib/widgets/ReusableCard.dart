import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {@required this.image,
      @required this.productName,
      @required this.productPrice,
      @required this.onTab});
  final String image;
  final String productName;
  final String productPrice;
  final Function onTab;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: onTab,
      child: Container(
        margin: EdgeInsets.all(6),
        width: width * .10,
        height: height * .25,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Image(
              image: NetworkImage(image),
              width: width * .20,
              height: height * .15,
            ),
            Text(
              productName,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              productPrice,
              style: TextStyle(
                  color: Colors.purpleAccent, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
