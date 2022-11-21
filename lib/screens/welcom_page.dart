import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_flutter/controller/auth_controller.dart';
import 'package:ui_flutter/screens/form/psychological_support.dart';
import 'package:ui_flutter/screens/form/rehabilitation.dart';
import 'package:ui_flutter/screens/form/speak_form.dart';

import '../state_mangment/speak_get.dart';

class WelcomePage extends StatelessWidget {
  String name;
  String url;
  WelcomePage({Key? key, required this.name,required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            Container(
              width: w,
              height: h * 0.3,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "img/signup.png",
                      ),



                      fit: BoxFit.cover)),
              child: Column(
                children: [
                  SizedBox(
                    height: h * 0.16,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white70,
                    radius: 55,
                    backgroundImage: url==" "? AssetImage(
                  "img/profile1.png",
                  ):NetworkImage(url) as ImageProvider

                  )
                ],
              ),
            ),
            const SizedBox(
              height: 45,
            ),
            Container(
              width: w,
              margin: const EdgeInsets.only(right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "مرحبا",
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                  Text(
                    name,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[500]),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GridDashboard(),
          ],
        ),
      ),
    );
  }
}

class GridDashboard extends StatelessWidget {
  Item item = Item(
    icon: Icons.record_voice_over_outlined,
      title: "استمارة النطق",
  onTap2: ()async{
    await  FirebaseAuth.instance.signInWithEmailAndPassword(email: "noemail1234t@gmail.com", password: "123123");
    final tokenResult =  FirebaseAuth.instance.currentUser;
    final idToken =await  tokenResult?.getIdToken();
    final token = idToken;
    print(token);
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: "new@gmail.com", password: "123123");
    print(FirebaseAuth.instance.currentUser?.email);
  },
  onTap: ()async{
      // final c= Get.put(SpeakGet());
      // await  FirebaseAuth.instance.signInWithEmailAndPassword(email: "noemail1234t@gmail.com", password: "123123");
      // final tokenResult =  FirebaseAuth.instance.currentUser;
      // final idToken =await  tokenResult?.getIdToken();
      // final token = idToken;
      // c.insertToken(token: token);
      // print(token);
      // await FirebaseAuth.instance.signInWithEmailAndPassword(email: "new@gmail.com", password: "123123");
      // print(FirebaseAuth.instance.currentUser?.email);

await Get.to(()=>SpeakForm());


  });

  Item item2 = Item(
    icon: Icons.restart_alt_outlined,
      title: "استمارة التأهيل",
      onTap: ()=>Get.to(()=>Rehabilitation()
      ));
  Item item3 = Item(
    icon: Icons.contact_support_outlined
      ,
      title: "استمارة الدعم النفسي",

      onTap: ()=>Get.to(()=>PsychologicalSupport()
      ));
  Item item4 = Item(
    icon: Icons.logout_outlined,
      title: "خروج",

      onTap: ()=>AuthController.instance.logOut()
      );

  @override
  Widget build(BuildContext context) {
    List<Item> myList = [item, item2,item3,item4];
    return Flexible(
        child: GridView.count(

          physics: BouncingScrollPhysics(),
      childAspectRatio: 1.0,
      padding: EdgeInsets.symmetric(horizontal: 20),
      crossAxisCount: 2,
      crossAxisSpacing: 18,
      mainAxisSpacing: 18,
      children: myList.map((data) {
        return Column(
          children: [
            SizedBox(height: 20,),
            GestureDetector(
              onTap: data.onTap,
              child: Container(
                height: 145,
                  width: 145,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 7,
                            offset: const Offset(1, 1),
                            color: Colors.grey.withOpacity(0.2))
                      ]),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          color: Colors.white,
                          width: 1.0
                      )
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(data.icon,color: Colors.deepOrange,size: 30),
                        SizedBox(height: 20,),
                        Text(data.title!,style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color: Colors.black),textAlign: TextAlign.center),
                      ],
                    ),
                  )),
            ),
          ],
        );
      }).toList(),
    ));
  }
}

class Item {
  String? title;
IconData? icon;
  GestureTapCallback? onTap;
  GestureTapCallback? onTap2;
  Item({this.title, this.onTap,this.icon,this.onTap2});
}
