import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:rmp_kp/repository/authentication_repository/authentication_repository.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super (key: key);
  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(

        iconTheme: IconThemeData(color: Colors.black54),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(LineAwesomeIcons.angle_left),
        ),
        title: Text("Профиль", textAlign: TextAlign.center),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(isDark ? LineAwesomeIcons.sun : LineAwesomeIcons.moon))
        ],
        backgroundColor: Colors.orange.shade800,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              SizedBox(
                width: 120,
                height: 120,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network('https://akolli.github.io/images/cat.jpg')),
              ),
              const SizedBox(height: 10),
              Text(
                "hellhound_",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)
              ),
              Text(
                "penzov.r.i.20@gmail.com",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      side: BorderSide.none,
                      shape: const StadiumBorder()),
                  child: const Text(
                    "Изменить данные",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Divider(),
              const SizedBox(height: 10),
              ListTile(
                leading: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.orange.withOpacity(0.8)
                  ),
                  child: const Icon(LineAwesomeIcons.cog, color: Colors.white,),
                ),
                title: Text("Настройки", style: TextStyle(fontSize: 18, color: Colors.white)),
                trailing: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.orange.withOpacity(0.8),
                  ),
                  child: const Icon(LineAwesomeIcons.angle_right, size: 18, color: Colors.white),
                ),
              ),
              const Divider(),
              ListTile(
                leading: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.orange.withOpacity(0.8)
                  ),
                  child: const Icon(LineAwesomeIcons.heart, color: Colors.white,),
                ),
                title: Text("Закладки", style: TextStyle(fontSize: 18, color: Colors.white)),
                trailing: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.orange.withOpacity(0.8),
                  ),
                  child: const Icon(LineAwesomeIcons.angle_right, size: 18, color: Colors.white),
                ),
              ),
              const Divider(),
              ListTile(
                leading: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.orange.withOpacity(0.8)
                  ),
                  child: const Icon(LineAwesomeIcons.comment, color: Colors.white,),
                ),
                title: Text("Рецензии", style: TextStyle(fontSize: 18, color: Colors.white)),
                trailing: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.orange.withOpacity(0.8),
                  ),
                  child: const Icon(LineAwesomeIcons.angle_right, size: 18, color: Colors.white),
                ),
              ),
              const SizedBox(height: 20),
              const Divider(),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.orange.withOpacity(0.8)
                ),
                child:  IconButton(onPressed: () {
                  AuthenticationRepository.instance.logout();
                }, icon: Icon(LineAwesomeIcons.door_open, color: Colors.white)

                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
