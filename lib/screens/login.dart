import 'package:ecommerce_flutter_v1/homePage.dart';
import 'package:ecommerce_flutter_v1/screens/register.dart';
import 'package:ecommerce_flutter_v1/services.dart';
import 'package:ecommerce_flutter_v1/utilis/constants.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Services services = Services();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
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
                'Welcome',
                style: TextStyle(
                    fontSize: 30,
                    color: Color(kMainColor),
                    fontWeight: FontWeight.bold),
              ),
              Form(
                child: TextFormField(
                  controller: email,
                  decoration: InputDecoration(hintText: 'Enter your email'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Form(
                child: TextFormField(
                  controller: password,
                  decoration: InputDecoration(hintText: 'Enter your password'),
                ),
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
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    color: Color(kMainColor),
                    onPressed: () {
                      services.login(email.text, password.text);
                      if (services.status) {
                        print('error');
                      } else {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      }
                    }),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Dont\'t have an account? '),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Register()));
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(color: Colors.blue),
                      ))
                ],
              )
            ],
          ),
        ));
  }
}
