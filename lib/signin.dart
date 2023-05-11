import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rmp_kp/repository/authentication_repository/authentication_repository.dart';
import 'signup.dart';
import 'home.dart';
import 'package:rmp_kp/ScreensFromHome/profile.dart';
import 'package:firebase_core/firebase_core.dart';
import './Controllers/signup_controller.dart';

class LoginPage extends StatelessWidget {

  @override

  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      body: SingleChildScrollView(
        child: CustomPaint(
          painter: BackgroundSignIn(),
          child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 200),
                Text("С возвращением!", style: TextStyle(
              fontSize: 34, fontWeight: FontWeight.bold, color: Colors.white)),
          SizedBox(height: 100),
          Form(
            key: _formKey,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 40),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
              TextFormField(
              decoration: InputDecoration(
              prefixIcon: Icon(Icons.email_outlined),
              labelText: "E-mail",
              hintText: "Ваша электронная почта",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.fingerprint),
              labelText: "Password",
              hintText: "Ваш пароль",
              border: OutlineInputBorder(),
              suffixIcon: IconButton(
                onPressed: null,
                icon: Icon(Icons.remove_red_eye_sharp),
              ),
            ),
          ),
          const SizedBox(height: 0),
          Align(alignment: Alignment.centerRight,
              child: TextButton(onPressed: () {},
                  child: Text(
                    "Забыли пароль?", style: TextStyle(color: Colors.grey),))),
          SizedBox(
              width: double.infinity,
              child: Expanded(child: ElevatedButton(onPressed: () {
                if(_formKey.currentState!.validate()){
                  SignUpController.instance.loginUser(controller.email.text.trim(), controller.password.text.trim());
                }
              },
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.black,
                      side: BorderSide(color: Colors.white),
                      padding: EdgeInsets.symmetric(vertical: 18)
                  ),
                  child: Text("Вход".toUpperCase(),
                      style: TextStyle(color: Colors.white)),
              ),) ,

        ),
          const SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("или", style: TextStyle(fontSize: 18)),
                const SizedBox(height: 10),
                OutlinedButton(onPressed: () {},
                  child: Text("Зарегистрироваться", style: TextStyle(color: Colors.black)),
                ),
              ],
            ),
          ),
        ],
    ),
    ),
    )
    ],
    ),
    ),
      )
    );
  }
}


_getBottomRow(context) {
  return Expanded(
    flex: 1,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SignUpPage()));
          },
          child: Text(
            'Регистрация',
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.underline),
          ),
        ),
        Text(
          'Забыли пароль',
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              decoration: TextDecoration.underline),
        )
      ],
    ),
  );
}

class BackgroundSignIn extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var sw = size.width;
    var sh = size.height;
    var paint = Paint();

    Path mainBackground = Path();
    mainBackground.addRect(Rect.fromLTRB(0, 0, sw, sh));
    paint.color = Colors.grey.shade100;
    canvas.drawPath(mainBackground, paint);

    // Blue
    Path blueWave = Path();
    blueWave.lineTo(sw, 0);
    blueWave.lineTo(sw, sh * 0.5);
    blueWave.quadraticBezierTo(sw * 0.5, sh * 0.45, sw * 0.2, 0);
    blueWave.close();
    paint.color = Colors.blue.shade800;
    canvas.drawPath(blueWave, paint);

    // orange
    Path greyWave = Path();
    greyWave.lineTo(sw, 0);
    greyWave.lineTo(sw, sh * 0.1);
    greyWave.cubicTo(
        sw * 0.95, sh * 0.15, sw * 0.65, sh * 0.15, sw * 0.6, sh * 0.38);
    greyWave.cubicTo(sw * 0.52, sh * 0.52, sw * 0.05, sh * 0.45, 0, sh * 0.4);
    greyWave.close();
    paint.color = Colors.orange.shade800;
    canvas.drawPath(greyWave, paint);

    // Red
    Path yellowWave = Path();
    yellowWave.lineTo(sw * 0.7, 0);
    yellowWave.cubicTo(
        sw * 0.6, sh * 0.05, sw * 0.27, sh * 0.01, sw * 0.18, sh * 0.12);
    yellowWave.quadraticBezierTo(sw * 0.12, sh * 0.2, 0, sh * 0.2);
    yellowWave.close();
    paint.color = Colors.red.shade800;
    canvas.drawPath(yellowWave, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}