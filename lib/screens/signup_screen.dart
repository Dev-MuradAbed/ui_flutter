import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ui_flutter/controller/auth_controller.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String imageUrl=" ";
  void pickUploadImage()async{
    final image=await ImagePicker().pickImage(source: ImageSource.gallery,
    maxWidth: 512,
      maxHeight: 512,
      imageQuality: 75
    );
    Reference ref=FirebaseStorage.instance.ref().child("profile.jpg");
    await ref.putFile(File(image!.path));
    ref.getDownloadURL().then((value){
      setState(() {
        imageUrl =value;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    var emailController=TextEditingController();
    var passwordController=TextEditingController();
    List imges=[
      "g.png",
      "t.png",
      "f.png",
    ];
    double w=MediaQuery.of(context).size.width;
    double h=MediaQuery.of(context).size.height;
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
                          "img/signup.png",
                        ),
                        fit: BoxFit.cover
                    )
                ),
child: Column(
  children: [
    SizedBox(height: h*0.16,),
    GestureDetector(
      onTap: (){
        pickUploadImage();
      },
      child: CircleAvatar(
        backgroundColor:Colors.white70,
        radius: 55,
        backgroundImage: imageUrl==" "?
        AssetImage(
            'img/profile1.png'
        ):NetworkImage(imageUrl) as ImageProvider,
      ),
    )
  ],
),
              ),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                width: w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                        enabled: true,
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


                  ],
                ),
              ),
              const SizedBox(height: 45,),
              GestureDetector(
                onTap: (){
                  AuthController.instance.register(emailController.text.trim(), passwordController.text.trim(),"مراد عابد",imageUrl);
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
                  child:const Center(child: Text("تسجيل حساب",style:TextStyle(fontSize: 36,fontWeight: FontWeight.bold,color: Colors.white) ,)),

                ),
              ),
              SizedBox(height: 10,),
              RichText(text: TextSpan(
                recognizer: TapGestureRecognizer()..onTap=()=>Get.back(),
                text: "هل تمتلك حساب؟",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[500]
                )

              )),
              SizedBox(height: w*0.2,),
              RichText(text: TextSpan(
                  text: 'تسجيل حساب باستخدام احد الطرق التالية',
                  style: TextStyle(color: Colors.grey[500],fontSize: 18),

              )),
              Wrap(
                children:List<Widget>.generate(3, (index) {
              return    Padding(
                padding: const EdgeInsets.all(10),
                child: GestureDetector(
                  onTap: index==0?(){
                    AuthController.instance.signInWithGoogle();
                  }:(){},
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey[500],
                    child: CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage(
                            "img/"+imges[index]
                          ),
                        ),
                  ),
                ),
              );
                }),
              )


            ],
          ),
        ),
      ),
    );
  }
}
