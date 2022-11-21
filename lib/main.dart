import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_flutter/controller/auth_controller.dart';
import 'firebase_options.dart';
import 'screens/login-screen.dart';
import 'package:firebase_core/firebase_core.dart';

import 'screens/splash_screen.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((value) => Get.put(AuthController()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}


