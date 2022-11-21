import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_flutter/screens/signup_screen.dart';

import '../controller/auth_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var emailController=TextEditingController();
    var passwordController=TextEditingController();
    double w=MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.height;
    print(h);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
body: Directionality(
  textDirection: TextDirection.rtl,
  child:   SingleChildScrollView(
    child: Column(
      children: [
        Container(
          width: w,
          height: h*0.3,
          decoration:const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "img/loginimg.png",
              ),
              fit: BoxFit.cover
            )
          ),

        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          width: w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("مرحبا",style:TextStyle(fontSize: 45,fontWeight: FontWeight.bold) ,),
              const Text("تسجل دخول إلى الحساب",style:TextStyle(fontSize: 18,color: Colors.grey) ,),
    const SizedBox(height: 50,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 7,
                      offset: const Offset(1, 1),
                      color: Colors.grey.withOpacity(0.2)
                    )
                  ]
                ),
                child: TextField(
                  controller: emailController,
      decoration: InputDecoration(
          hintText:"الايميل" ,
          prefixIcon: Icon(Icons.email,color: Colors.deepOrangeAccent,),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Colors.white,
            width: 1.0
          )
        ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),

              borderSide: const BorderSide(
                    color: Colors.white,
                    width: 1.0
                )
          ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30)
        )
      ),
    ),
              ),
              const SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 7,
                      offset: const Offset(1, 1),
                      color: Colors.grey.withOpacity(0.2)
                    )
                  ]
                ),
                child: TextField(
                  controller: passwordController,
      decoration: InputDecoration(
          hintText:"كلمة السر" ,
          prefixIcon: Icon(Icons.password_outlined,color: Colors.deepOrangeAccent,),
        suffixIcon:Icon(Icons.visibility_off_outlined,color: Colors.deepOrangeAccent,),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: Colors.white,
            width: 1.0
          )
        ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),

              borderSide: const BorderSide(
                    color: Colors.white,
                    width: 1.0
                )
          ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30)
        )
      ),
    ),
              ),
              const SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(child: Container()),
                  const Text("هل نسيت كلمة المرور؟",style:TextStyle(fontSize: 18,color: Colors.grey)
                  )
                    ],
              ),

            ],
          ),
        ),
        const SizedBox(height: 45,),
        GestureDetector(
          onTap:  () {
            AuthController.instance.login(emailController.text.trim(), passwordController.text.trim());
          },

          child: Container(
            width: w*0.6,
            height:h<=392.72727272727275?h*0.2:h*0.08,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
                image:const DecorationImage(
                    image: AssetImage(
                      "img/loginbtn.png",
                    ),
                    fit: BoxFit.cover
                )
            ),
    child:const Center(child: Text("تسجيل دخول",style:TextStyle(fontSize: 36,fontWeight: FontWeight.bold,color: Colors.white) ,)),

          ),
        ),
        SizedBox(height: w*0.1,),
        RichText(text: TextSpan(
          text: 'لا تملك حساباً ؟',
          style: TextStyle(color: Colors.grey[500],fontSize: 18),
          children: [
             TextSpan(
               recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>SignUpScreen()),
            text: ' أنشأ',
            style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)
          ]
        ))


      ],
    ),
  ),
),
    );
  }
}
