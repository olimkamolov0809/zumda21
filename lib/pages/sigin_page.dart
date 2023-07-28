import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:zumda/pages/home_page.dart';
import 'package:zumda/services/auth_service.dart';

import '../services/utils_service.dart';
import 'homepage2.dart';

class SigInPage extends StatefulWidget {
  static final String id = 'sigin_page';
  const SigInPage({Key? key}) : super(key: key);

  @override
  State<SigInPage> createState() => _SigInPageState();
}

class _SigInPageState extends State<SigInPage> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  bool isLoading = false;

  _doSignInPage(){
    String email = emailController.text.toString().trim();
    String password = passwordController.text.toString().trim();
    if(email.isEmpty || password.isEmpty) return;

    setState(() {
      isLoading = true;
    });
    AuthService.signInUser(email, password).then((value) => {
      _responseSignIn(value!),
    });

    Navigator.pushReplacementNamed(context, HomePage2.id);
  }

  _responseSignIn(User firebaseUser){
    setState(() {
      isLoading = false;
    });
  }



  /*_callInPage(){
    setState(() {
      Navigator.pushReplacementNamed(context, SignUpPage.id);
    });
  }
   */

  _homepage(){
    setState(() {
      Navigator.pushReplacementNamed(context, HomePage2.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.width;
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 300,right: 10,top: 70),
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromRGBO(255, 218, 213, 1),
                boxShadow: [
                  //BoxShadow(color: Colors.black12,offset: Offset(2.0, 2.0)),
                  BoxShadow(color: Colors.black12,offset: Offset(-2.0, -2.0)),
                ],
              ),
              child: GestureDetector(
                onTap: (){
                  Utils.makePhoneCall("+998930775777");
                },
                child: Center(
                  child: Icon(Icons.phone_outlined,size: 25,),
                ),
              ),
            ),
            SizedBox(height: 60),
            Container(
              margin: EdgeInsets.only(left: 60,right: 60),
              child: Image(
                image: AssetImage('assets/images/img_3.png'),
              ),
            ),
            SizedBox(height: 60),
            Container(
              padding: EdgeInsets.only(left: 35),
              child: Text('Логин',style: TextStyle(fontSize: 16),),
            ),
            Container(
              margin: EdgeInsets.only(left: 20,right: 20),
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color:Color.fromRGBO(255, 218, 213, 1),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex:3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: TextField(
                            controller: emailController,
                            style: TextStyle(color: Colors.black,fontSize:20),
                            decoration: InputDecoration(
                              hintText: 'Email',
                              border: InputBorder.none,
                              hintStyle:
                              TextStyle(fontSize: 20, color: Colors.black26),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 50),
                  Expanded(
                    flex: 1,
                    child: Icon(
                        Icons.cancel_outlined
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 35),
              child: Text('Неверные данные.',style: TextStyle(fontSize: 14,color: Colors.black38),),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.only(left: 35),
              child: Text('Пароль',style: TextStyle(fontSize: 16),),
            ),
            Container(
              margin: EdgeInsets.only(left: 20,right: 20),
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color:Color.fromRGBO(255, 218, 213, 1),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex:3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: TextField(
                            controller: passwordController,
                            obscureText: true,
                            style: TextStyle(color: Colors.black,fontSize: 20),
                            decoration: InputDecoration(
                              hintText: '***********',
                              border: InputBorder.none,
                              hintStyle:
                              TextStyle(fontSize: 20, color: Colors.black26),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 50),
                  Expanded(
                    flex: 1,
                    child: Icon(
                        Icons.cancel_outlined
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 35),
              child: Text('Неверные данные.',style: TextStyle(fontSize: 14,color: Colors.black38),),
            ),
            SizedBox(height: 30),
            GestureDetector(
              onTap: (){
                _doSignInPage();
              },
              child: Container(
                margin: EdgeInsets.only(left: 150,right: 150),
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color:Color.fromRGBO(255, 218, 213, 1),
                ),
                child: Stack(
                  children: [
                    Center(
                      child: Text('Войти'),
                    ),
                    isLoading? Center(
                      child: CircularProgressIndicator(),
                    ):SizedBox.shrink(),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            GestureDetector(
              onTap: (){
                //Utils.makePhoneCall("+998930775777");
              },
              child: Container(
                child: Center(
                  child: Text('Забыли пароль?',style: TextStyle(color: Colors.red),),
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              child: Center(
                child: Text('Вас нет в нашей системе? Создать аккаунт',style: TextStyle(color: Colors.black),),
              ),
            ),
            SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}

//906675878 973141411