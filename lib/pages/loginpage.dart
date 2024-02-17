import 'package:arabic_font/arabic_font.dart';
import 'package:dahab/widgets/loginbutton.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});
  static String id = 'loginpage';

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  Future<UserCredential> SignInWithGoogle() async {
    
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 4, 23, 38),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            'اهلا بيك',
            style: ArabicTextStyle(
                arabicFont: ArabicFont.arefRuqaa,
                color: Colors.amber,
                fontSize: 50),
          )),
          SizedBox(height: 15),
          Text(
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.center,
            'لمتابعة اسعار الذهب و الفضة لحظة ب لحظة في السوق المصري  قم بانشاء حساب .',
            style: ArabicTextStyle(
                arabicFont: ArabicFont.cairo,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () async{
             await SignInWithGoogle();
            },
            child: loginbutton(
                image: 'assets/gmail-new-icon5198.jpg',
                loginwith: 'Login With Gmail'),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {},
            child: loginbutton(
                image: 'assets/Facebook_Logo_(2019).png',
                loginwith: 'Login With Facebook'),
          )
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
