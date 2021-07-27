import 'package:ecommerce_flutter_v1/utilis/constants.dart';
import 'package:ecommerce_flutter_v1/widgets/ReusableDetailsCard.dart';
import 'package:flutter/material.dart';

class ElectroniceDetailsScreen extends StatelessWidget {
  final String url;
  final String name;
  final String price;
  final String details;
  ElectroniceDetailsScreen({this.url,this.name,this.price,this.details});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        backgroundColor: Color(kMainColor),
      ),
      body: ResuablesDetailsCard(
          url: url, name: name, price: price, details: details),
    );
  }
}
