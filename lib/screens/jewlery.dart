import 'package:ecommerce_flutter_v1/screens/jewleryDetailsScreen.dart';
import 'package:ecommerce_flutter_v1/utilis/constants.dart';
import 'package:ecommerce_flutter_v1/widgets/ReusableCard.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_flutter_v1/services.dart';

class JewleryScreen extends StatefulWidget {
  @override
  _JewleryScreenState createState() => _JewleryScreenState();
}

class _JewleryScreenState extends State<JewleryScreen> {
  Services services = Services();
  @override
  void initState() {
    super.initState();
    services.getJewlery();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jewlery'),
        backgroundColor: Color(kMainColor),
      ),
      body: FutureBuilder(
        future: services.getJewlery(),
        builder: (context, snapshot) {
          return GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: snapshot.data == null ? 0 : snapshot.data.length,
              itemBuilder: (context, index) {
                return ReusableCard(
                    image: snapshot.data[index].image,
                    productName: snapshot.data[index].title,
                    productPrice: snapshot.data[index].price.toString(),
                    onTab: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => JewleryDetailsScreen(
                                  url: snapshot.data[index].image,
                                  name: snapshot.data[index].title,
                                  price: snapshot.data[index].price.toString(),
                                  details: snapshot.data[index].description)));
                    });
              });
        },
      ),
    );
  }
}
