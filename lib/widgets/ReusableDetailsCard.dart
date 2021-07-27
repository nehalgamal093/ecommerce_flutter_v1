import 'package:flutter/material.dart';

class ResuablesDetailsCard extends StatelessWidget {
  ResuablesDetailsCard(
      {@required this.url,
      @required this.name,
      @required this.price,
      @required this.details});
  final String url;
  final String name;
  final String price;
  final String details;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.fromLTRB(10, 50, 10, 10),
        child: Column(
          children: [
            Image(image: NetworkImage(url),width:width*.80,height: height*.50,),
            Text(name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Text(price,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),textAlign: TextAlign.right,),
            Text(details,style: TextStyle(fontSize: 17),)
          ],
        ),
      ),
    );
  }
}
