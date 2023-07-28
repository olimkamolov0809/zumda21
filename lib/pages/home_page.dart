import 'dart:async';

import 'package:flutter/material.dart';
import 'package:zumda/pages/homepage2.dart';
import 'package:zumda/pages/sigin_page.dart';
import 'package:zumda/services/auth_service.dart';
import 'package:zumda/services/log_services.dart';

import '../services/http_service.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
    _initTimer();

    //_apiPostList();
  }

  void _apiPostList(){
    Network.GET(Network.API_LIST, Network.paramsEmpty()).then((response) =>{
      LogService.i(response.toString()),
    });
  }

  _initTimer(){
    Timer(Duration(seconds: 10),(){
      _callNextPage();
    });
  }

  _callNextPage(){
    if(AuthService.isLoggedIn()){
      Navigator.pushReplacementNamed(context, HomePage2.id);
    }else{
      Navigator.pushReplacementNamed(context, SigInPage.id);
    }
  }

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            //padding: EdgeInsets.only(bottom:30),
            width: 200,
            height: 200,
            margin: EdgeInsets.only(left: 95,right: 95,bottom: 290,top: 290),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(200),
              color:Colors.red[900],
            ),
            child:const Image(image: AssetImage('assets/images/021.png'),),
          ),
          //Image(image: AssetImage('assets/images/001.jpg'),),
        ],
      ),
    );
  }
}
