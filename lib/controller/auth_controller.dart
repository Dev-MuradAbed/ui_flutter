import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ui_flutter/screens/login-screen.dart';
import 'package:ui_flutter/screens/welcom_page.dart';

class AuthController extends GetxController{
  // AuthController.instance..
  static AuthController instance =Get.find();
  //email , password , name ....
  late Rx<User?> _user;
  FirebaseAuth auth =FirebaseAuth.instance;
  @override
  void onReady(){
    super.onReady();
    _user=Rx<User?> (auth.currentUser);
    //our user would be notified
    _user.bindStream(auth.userChanges());
    ever(_user, _initialScreen);
  }
  _initialScreen(User? user){
    if(user==null){
      print('login page');
      Get.offAll(()=>LoginScreen());
    }else{
      Get.offAll(()=>WelcomePage(name:user.displayName!,url:user.photoURL!));
    }
  }

Future<User?> register(String email,password,name,url)async{
try{
 UserCredential result =await auth.createUserWithEmailAndPassword(email: email, password: password);
User? user=result.user;
user?.updateDisplayName(name);
user?.updatePhotoURL(url);
return _user(user);
}catch(e){
  Get.snackbar("About User", "User message",
  backgroundColor: Colors.redAccent,
  snackPosition: SnackPosition.TOP,
    titleText: Text("Account creation faild",style: TextStyle(color: Colors.white),),
    messageText: Text(e.toString(),style: TextStyle(color: Colors.white),)
  );
}
  }
  void login(String email,password)async{
    try{
      await auth.signInWithEmailAndPassword(email: email, password: password);

    }catch(e){
      Get.snackbar("About Login", "Login message",
          backgroundColor: Colors.redAccent,
          snackPosition: SnackPosition.TOP,
          titleText: Text("Login faild",style: TextStyle(color: Colors.white),),
          messageText: Text(e.toString(),style: TextStyle(color: Colors.white),)
      );
    }
  }
  void logOut()async{
    await auth.signOut();
  }
  signInWithGoogle()async{
    final GoogleSignInAccount? googleUser=await GoogleSignIn(
      scopes: <String>["email"]
    ).signIn();
    final GoogleSignInAuthentication googleAuth =await googleUser!.authentication;
    final credential=GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    print("ChooseGoogle ${googleAuth.accessToken}") ;
    var x=await auth.signInWithCredential(credential).then((value) => value.credential!.accessToken);
    print("GoogleFirebase $x") ;
    return await auth.signInWithCredential(credential);

// handelAuthState(){
//     return StreamBuilder(
//         builder: (BuildContext context,snapshot){
//           if(snapshot.hasData){
//             return WelcomePage(name: )
//           }else{
//             return LoginScreen();
//           }
//         }
//     );
}
  


}