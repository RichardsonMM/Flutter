import 'package:flutter/material.dart';
import 'package:flutter_login/Screens/Login/components/background.dart';
import 'package:flutter_login/constants.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          Text('LOGIN'),
          // const Text(
          //   "LOGIN",
          //   style: TextStyle(
          //     fontWeight: FontWeight.bold,
          //   ),
          // ),
          //SvgPicture.asset('assets/icons/login.svg'),
        ],
      ),
    );
  }
}
