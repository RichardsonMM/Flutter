import 'package:flutter/material.dart';
import 'package:flutter_login/Screens/components/rounded_button.dart';
import 'package:flutter_login/constants.dart';
import 'package:flutter_svg/svg.dart';

class Background extends StatefulWidget {
  final Widget child;

  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  State<Background> createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  bool _isObscure = true;

  void mudaEstado() {}

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        height: size.height,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                'assets/images/main_top.png',
                width: size.width * 0.35,
              ),
            ),
            // ignore: prefer_const_constructors
            Positioned(
              top: 130,
              child: const Text(
                'ENTRAR',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kPrimaryColor,
                    fontSize: 20),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                'assets/images/login_bottom.png',
                width: size.width * 0.45,
              ),
            ),
            Positioned(
              top: 180,
              child: SvgPicture.asset(
                'assets/icons/login.svg',
                width: size.width * 0.78,
              ),
            ),
            Positioned(
              bottom: 230,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(29),
                child: Container(
                  color: kPrimaryLightColor,
                  width: size.width * 0.8,
                  padding: EdgeInsets.all(6),
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
              bottom: 160,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(29),
                child: Container(
                  color: kPrimaryLightColor,
                  width: size.width * 0.8,
                  padding: EdgeInsets.all(6),
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
                          _isObscure ? Icons.visibility : Icons.visibility_off,
                          color: kPrimaryColor,
                        ),
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
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
                text: 'ENTRAR',
                color: kPrimaryColor,
                textColor: kPrimaryLightColor,
                press: () {},
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
