import 'package:ecommerce_flutter_v1/widgets/ReusableDetailsCard.dart';
import 'package:flutter/material.dart';

class JewleryDetailsScreen extends StatelessWidget {
  final String name;
  final String price;
  final String details;
  final String url;
  JewleryDetailsScreen({this.name, this.price, this.details, this.url});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResuablesDetailsCard(
          url: url, name: name, price: price, details: details),
    );
  }
}
