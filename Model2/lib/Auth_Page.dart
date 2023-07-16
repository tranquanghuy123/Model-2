import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:model2/Login_Screen.dart';
import 'Home_Page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  void signUserOut() {
    FirebaseAuth.instance.signOut();
}
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot){
        ///user is log in
        if(snapshot.hasData){
          return HomePage();
        }
        else{
          return loginScreen();
        }

        ///user is not log in

      },
    )
  );
  }
  }