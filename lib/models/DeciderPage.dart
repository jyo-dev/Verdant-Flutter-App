import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login_app/modules/HomePage.dart';
import 'package:login_app/modules/login_page.dart';

class DeciderPage extends StatelessWidget {


  var user =FirebaseAuth.instance.currentUser;
  //var user = firebase.auth().currentUser;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<User>(
        //future:FirebaseAuth.instance.currentUser,
        builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
          if (user!=null) {
            User user = snapshot.data; // this is your user instance
            /// is because there is user already logged
            return HomePage();
          }

          /// other way there is no user logged.
          return LoginPage();
        });
  }
}


