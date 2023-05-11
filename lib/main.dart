import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rmp_kp/firebase_options.dart';
import 'package:rmp_kp/repository/authentication_repository/authentication_repository.dart';
import 'package:rmp_kp/signin.dart';
import 'signup.dart';
import 'home.dart';

import 'package:rmp_kp/ScreensFromHome/profile.dart';
import 'package:firebase_core/firebase_core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthenticationRepository()));
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/main',
    routes: {
      '/main': (context) => WelcomeScreen(),
      '/signup': (context) => SignUpPage(),
      '/signin': (context) => LoginPage(),
      '/home': (context) => HomeScreen(),
      '/home/profile': (context) => ProfileScreen(),
    },
  ));
}

const String welcomeScreen = "./lib/img/welcome.png";

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image: NetworkImage('https://freepngclipart.com/download/popcorn/72758-cinema-vector-popcorn-with-cartoon-film-3d.png'),height: height * 0.5),
            Column(
              children: [
                Text("Добро пожаловать!", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white)),
              ],
            ),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: OutlinedButton(onPressed: () {Navigator.pushNamed(context, '/signin'); }, style: OutlinedButton.styleFrom(foregroundColor: Colors.white, side: BorderSide(color: Colors.black), padding: EdgeInsets.symmetric(vertical: 15)) ,child: Text('Вход'.toUpperCase(), style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)))),
                const SizedBox(width: 10),
                Expanded(child: ElevatedButton(onPressed: () {Navigator.pushNamed(context, '/signup'); }, style: ElevatedButton.styleFrom(foregroundColor: Colors.white, backgroundColor: Colors.black, padding: EdgeInsets.symmetric(vertical: 15)) ,child: Text('Регистрация'.toUpperCase(), style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)))),
              ],
            ),
          ],
        ),
      ),
    );
  }


  //
  // @override
  // Widget build(BuildContext context) {
  //   var height = MediaQuery.of(context).size.height;
  //   return Scaffold(
  //     backgroundColor: Colors.orange,
  //     body: Container(
  //       padding: EdgeInsets.all(30),
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //         children: [
  //           Image(
  //               image: NetworkImage(
  //                   "https://freepngclipart.com/download/popcorn/72758-cinema-vector-popcorn-with-cartoon-film-3d.png"),
  //               height: height * 0.5),
  //           Column(
  //             children: [
  //               Text("Добро пожаловать!",
  //                   style: TextStyle(
  //                       fontSize: 30,
  //                       fontWeight: FontWeight.bold,
  //                       color: Colors.white)),
  //             ],
  //           ),
  //           Row(
  //             children: [
  //               Expanded(
  //                 child: OutlinedButton(
  //                   onPressed: () {
  //                     Navigator.pushNamed(context, '/signin');
  //                   },
  //                   style: OutlinedButton.styleFrom(
  //                     elevation: 0,
  //                     foregroundColor: Colors.white,
  //                     side: BorderSide(color: Colors.white),
  //                     padding: EdgeInsets.symmetric(vertical: 18),
  //                   ),
  //                   child: Text(
  //                     "Вход".toUpperCase(),
  //                     style: TextStyle(color: Colors.white),
  //                   ),
  //                 ),
  //               ),
  //               const SizedBox(width: 10),
  //               Expanded(
  //                 child: ElevatedButton(
  //                   onPressed: () {
  //                     Navigator.pushNamed(context, '/signup');
  //                   },
  //                   style: ElevatedButton.styleFrom(
  //                     elevation: 0,
  //                     foregroundColor: Colors.white,
  //                     backgroundColor: Colors.white,
  //                     side: BorderSide(color: Colors.white),
  //                     padding: EdgeInsets.symmetric(vertical: 18),
  //                   ),
  //                   child: Text(
  //                     "Регистрация".toUpperCase(),
  //                     style: TextStyle(color: Colors.black),
  //                   ),
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}

