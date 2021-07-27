import 'package:ecommerce_flutter_v1/Model/electronicsModel.dart';
import 'package:ecommerce_flutter_v1/screens/electronics.dart';
import 'package:ecommerce_flutter_v1/screens/jewlery.dart';
import 'package:ecommerce_flutter_v1/utilis/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_flutter_v1/services.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Services services = Services();
  @override
  void initState() {
    super.initState();
    //services.getCategory();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          backgroundColor: Color(kMainColor),
        ),
        drawer: Drawer(
          /* child: FutureBuilder(
            future: services.getCategory(),
            builder: (snapshot, context) {
              return ListView.builder(
                  itemCount: services.category.length,
                  itemBuilder: (context, index) {
                    return Text(services.category[index]);
                  });
            },
          ),*/
          child: Column(
            children: [
              Image.asset('assets/cart.gif'),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ElectronicsScreen()));
                  },
                  child:ListTile(
                    title: Text('Electronics'),
                    leading: Icon(Icons.computer)
                  )),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => JewleryScreen()));
                },
                child: ListTile(
                  title: Text('Jewlery'),
                  leading: Icon(Icons.wallet_giftcard),
                ),
              ),
              ListTile(
                title: Text('Men\'s wear' ),
                leading: Icon(Icons.chevron_right),
              ),
              ListTile(
                title: Text('Women\'s wear'),
                leading: Icon(Icons.wysiwyg),
              ),
              ListTile(
                title: Text('Profile'),
                leading: Icon(Icons.person),
              ),
              ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
              ),

            ],
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              'assets/sale.jpg',
              width: width,
              height: height * .15,
              fit: BoxFit.cover,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Image.asset('assets/makeup.jpg',
                    width: width * .35, height: height * .20),
                Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/shirts.jpg',
                      width: width * .30,
                      height: height * .10,
                    ),
                    Image.asset(
                      'assets/clothesone.jpg',
                      width: width * .30,
                      height: height * .10,
                    )
                  ],
                ),
                Image.asset('assets/clothestwo.jpg',
                    width: width * .30, height: height * .20)
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Shop Now',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                Image.asset(
                  'assets/colors.jpg',
                  fit: BoxFit.cover,
                  width: width,
                  height: height * .25,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/offer.png',
                  height: height * .20,
                  width: width,
                )
              ],
            )
          ],
        ));
  }
}
