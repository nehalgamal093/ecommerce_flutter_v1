import 'package:ecommerce_flutter_v1/utilis/constants.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/cart.gif'),
              Text(
                'Register',
                style: TextStyle(
                    fontSize: 30,
                    color: Color(kMainColor),
                    fontWeight: FontWeight.bold),
              ),
              Form(
                child: TextFormField(),
              ),
              SizedBox(
                height: 20,
              ),
              Form(
                child: TextFormField(),
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                width: width * .80,
                height: height * .05,
                decoration: BoxDecoration(),
                child: MaterialButton(
                    child: Text(
                      'Register',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    color: Color(kMainColor),
                    onPressed: () {}),
              ),
            ],
          ),
        ));
  }
}
