import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:zumda/pages/%D0%98%D1%81%D1%82%D0%BE%D1%80%D0%B8%D1%8F_page.dart';
import 'package:zumda/pages/%D0%9D%D0%BE%D0%B2%D1%8B%D0%B5_page.dart';
import 'package:zumda/pages/%D0%A2%D0%B5%D0%BA%D1%83%D1%89%D0%B8%D0%B5_page.dart';
import 'package:zumda/pages/gatov_page.dart';
import 'package:zumda/pages/home_page.dart';
import 'package:zumda/pages/homepage2.dart';
import 'package:zumda/pages/sigin_page.dart';
import 'package:zumda/pages/user_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //MediaQuery.of(context).size.width;
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
      routes: {
        SigInPage.id: (context) => SigInPage(),
        HomePage2.id: (context) => HomePage2(),
        HozergiPage.id:(context) => HozergiPage(),
        NovePage.id: (context) => NovePage(),
        IstoriyaPage.id: (context) => IstoriyaPage(),
        GatovPage.id: (context) => GatovPage(),
        UserPage.id: (context) => UserPage(),
      }
    );
  }
}
