import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:rmp_kp/ScreensFromHome/profile.dart';
import 'package:get/get.dart';

import 'ScreensFromHome/profile.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black54,
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("MovieApp", style: TextStyle(color: Colors.white, fontSize: 17),),
        actions: [
          CircleAvatar(
            radius: 15,
            backgroundColor: Colors.orange.shade800,
            child: Icon(Icons.search, size: 30, color: Colors.white,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child:  IconButton(
              // onPressed: () { Get.to(ProfileScreen())},
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ProfileScreen();
                      },
                    )
                );
              },
              icon: const Icon(Icons.person),
            ),
            // CircleAvatar(
            //   radius: 12,
            //   backgroundColor: Colors.orange.shade100,
            //   child: Icon(Icons.verified_user, size: 17, color: Colors.black,),
            // ),
          ),

        ],
        backgroundColor: Colors.orange.shade800,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage('https://mobimg.b-cdn.net/v3/fetch/70/70cbf941d8d8fef91080143270e3e623.jpeg?w=1470&r=0.5625'),
                    ),
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Новинки", style: TextStyle(color: Colors.white, fontSize: 25),),
                      Text("Смотреть больше", style: TextStyle(color: Colors.white, fontSize: 15),),
                    ],
                  ),
                ), //Новинки
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 230,
                        width: 130,
                        decoration: BoxDecoration(
                            color: Colors.black26,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Image.network('https://cv9.litres.ru/pub/c/cover_max1500/56564993.jpg'),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Text("Триггер", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),

                          ],
                        ),
                      ),
                      Container(
                        height: 230,
                        width: 130,
                        decoration: BoxDecoration(
                            color: Colors.black26,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Image.network('https://sun9-8.userapi.com/impg/9RNSkRO1I5PKHwz7PANGVj_duhAADc-j6eOFoQ/hJiGVf3j8O8.jpg?size=736x920&quality=96&sign=3dba70df5592553532efe3ab11c33735&c_uniq_tag=vwseCSYjS4wCMhHAupSZezd6XwDjnjc_VSotj5PDeLY&type=album'),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Text("Волчонок", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Популярное", style: TextStyle(color: Colors.white, fontSize: 25),),
                      Text("Смотреть больше", style: TextStyle(color: Colors.white, fontSize: 15),),
                    ],
                  ),
                ), //Популярное
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 35),
                  child: Row(
                    children: [
                      Container(
                        height: 230,
                        width: 160,
                        decoration: BoxDecoration(
                            color: Colors.black26,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Image.network('https://avatars.dzeninfra.ru/get-zen_doc/1678002/pub_5de64b6bddfef600b0c076c8_5de64bb9a06eaf00af4e61d1/scale_1200'),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Text("Один дома", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 230,
                        width: 160,
                        decoration: BoxDecoration(
                            color: Colors.black26,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Image.network('https://cdna.artstation.com/p/assets/images/images/047/237/348/large/nathalia-croft-img-0380.jpg?1647102492'),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Text("Один ", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Сериалы", style: TextStyle(color: Colors.white, fontSize: 25),),
                      Text("Смотреть больше", style: TextStyle(color: Colors.white, fontSize: 15),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 35),
                  child: Row(
                    children: [
                      Container(
                        height: 230,
                        width: 160,
                        decoration: BoxDecoration(
                            color: Colors.black26,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Image.network('https://images5.fanpop.com/image/photos/26000000/tvd-new-poster-the-vampire-diaries-tv-show-26070568-1580-2048.jpg'),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Text("Дневники вампира", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 230,
                        width: 160,
                        decoration: BoxDecoration(
                            color: Colors.black26,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Image.network('https://smotrikinoonline.ru/uploads/posts/2021-04/1617646699_38d89b1e3ec023db8b3f2897f52d21.jpg'),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Text("Древние", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
          //
          //
          // body: StreamBuilder(
          //     stream: FirebaseFirestore.instance.collection('films').snapshots(),
          //     builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          //       if(!snapshot.hasData) return Text('Нет фильмов');
          //       return ListView.builder(
          //           itemCount: (snapshot.data! as QuerySnapshot).docs.length,
          //           itemBuilder: (BuildContext context, int index){
          //             return Dismissible(
          //               key: Key((snapshot.data! as QuerySnapshot).docs.id),
          //               child: Card(
          //                 child: ListTile(
          //                   trailing: Image.network((snapshot.data! as QuerySnapshot).docs[index].get('img')),
          //                   title: Text((snapshot.data! as QuerySnapshot).docs[index].get('name')),
          //                 ),
          //               )
          //             );
          //           }
          //       };
          //     },
          // )

