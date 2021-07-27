import 'package:ecommerce_flutter_v1/screens/electronicsDetailsScreen.dart';
import 'package:ecommerce_flutter_v1/utilis/constants.dart';
import 'package:ecommerce_flutter_v1/widgets/ReusableCard.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_flutter_v1/services.dart';

class ElectronicsScreen extends StatefulWidget {
  @override
  _ElectronicsScreenState createState() => _ElectronicsScreenState();
}

class _ElectronicsScreenState extends State<ElectronicsScreen> {
  Services services = Services();
  @override
  void initState() {
    super.initState();
    services.getElectronics();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text('Electronics'),
          backgroundColor: Color(kMainColor),
          actions: [
            IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {})
          ],
        ),
        body: FutureBuilder(
          future: services.getElectronics(),
          builder: (context, snapshot) {
            return Container(
              padding: EdgeInsets.all(8),
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemCount: snapshot.data == null ? 0 : snapshot.data.length,
                  itemBuilder: (context, index) {
                    return ReusableCard(
                        onTab: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ElectroniceDetailsScreen(
                                          url: snapshot.data[index].image,
                                          name: snapshot.data[index].title,
                                          price: snapshot.data[index].price
                                              .toString(),
                                          details: snapshot
                                              .data[index].description)));
                        },
                        image: snapshot.data[index].image,
                        productName: snapshot.data[index].title,
                        productPrice: snapshot.data[index].price.toString());
                  }),
            );
          },
        ));
  }
}
