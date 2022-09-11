import 'package:flutter/material.dart';
import 'package:flutter_login/Screens/components/rounded_button.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class SignupScreen extends StatefulWidget {
  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool _isObscure = true;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: size.height,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 0,
                left: 0,
                child: Image.asset(
                  'assets/images/main_top.png',
                  width: size.width * 0.35,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset(
                  'assets/images/login_bottom.png',
                  width: size.width * 0.35,
                ),
              ),
              Positioned(
                top: 140,
                child: SvgPicture.asset(
                  'assets/icons/signup.svg',
                  width: size.width * 0.73,
                ),
              ),
              Positioned(
                bottom: 240,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(29),
                  child: Container(
                    color: kPrimaryLightColor,
                    width: size.width * 0.8,
                    padding: EdgeInsets.all(7),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Seu email",
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.person,
                            color: kPrimaryColor, size: size.width * 0.07),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 170,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(29),
                  child: Container(
                    color: kPrimaryLightColor,
                    width: size.width * 0.8,
                    padding: EdgeInsets.all(7),
                    child: TextField(
                      obscureText: _isObscure,
                      decoration: InputDecoration(
                        hintText: "Digite sua senha",
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.lock,
                            color: kPrimaryColor, size: size.width * 0.07),
                        suffixIcon: IconButton(
                          splashRadius: 10,
                          icon: Icon(
                            _isObscure
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: kPrimaryColor,
                          ),
                          onPressed: () {
                            setState(
                              () {
                                _isObscure = !_isObscure;
                              },
                            );
                            // setState(() {
                            //   _isObscure = !_isObscure;
                            // });
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 85,
                child: RoundedButton(
                  text: 'CADASTRAR',
                  color: kPrimaryColor,
                  textColor: kPrimaryLightColor,
                  press: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
