import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_app/AgroAdvisory/AgroAdvisory.dart';
import 'package:login_app/Calender/LoadingCalender.dart';
import 'package:login_app/RealHomeDirectory/MainRealHome.dart';
import 'Calender/CalenderHome.dart';
import 'models/DeciderPage.dart';
import 'modules/HomePage.dart';
import 'modules/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'LeonSans'),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => DeciderPage(),
        '/HomePage': (context) => HomePage(),
        '/Crop': (context) => MainRealHome(),
        '/Calender': (context) => LoadingScreen(),
        '/Advisory': (context) => AgroAdvisory(),
      },
    );
  }
}
