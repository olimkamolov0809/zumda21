import 'package:flutter/material.dart';
import 'package:zumda/pages/sigin_page.dart';
import 'package:zumda/services/utils_service.dart';
class UserPage extends StatefulWidget {
  static final String id = 'user_page';
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  _homePage(){
    setState(() {
      Navigator.pushReplacementNamed(context, SigInPage.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20,right:5,top: 80),
            height: 130,
            width: 395,
            color: Color.fromRGBO(251, 238, 236, 1),
            child: Text('Аккаунт',style: TextStyle(fontSize: 24),),
          ),
          SizedBox(height: 30),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 140),
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(120),
                  color: Colors.black38,
                ),
                child: Image(image: AssetImage('assets/images/img_4.png'),),
              ),
              Container(
                margin: EdgeInsets.only(left: 40,bottom: 60),
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromRGBO(255, 218, 213, 1),
                ),
                child: GestureDetector(
                  onTap: (){
                    Utils.makePhoneCall('+998930775777');
                  },
                  child: Center(
                    child: Icon(Icons.phone_outlined,size: 24,),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            height: 60,
            child: Center(
              child: Text('Рамзан Ширалиев',style: TextStyle(fontSize: 26,fontWeight: FontWeight.w500),),
            ),
          ),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.only(left: 20,right: 20),
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1,color: Color.fromRGBO(216, 194, 190, 1)),
              color: Color.fromRGBO(255, 248, 246, 1),
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15),
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Color.fromRGBO(180, 39, 27, 1),
                  ),
                  child: Center(
                    child: Icon(Icons.access_time_rounded,color: Colors.white,size: 20,),
                  ),
                ),
                SizedBox(width: 10,),
                Text('Статус: ',),
                Text('Открыто',style: TextStyle(fontWeight: FontWeight.w600),)
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.only(left: 20,right: 20),
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1,color: Color.fromRGBO(216, 194, 190, 1)),
              color: Color.fromRGBO(255, 248, 246, 1),
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15,bottom: 60),
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Color.fromRGBO(180, 39, 27, 1),
                  ),
                  child: Center(
                    child: Icon(Icons.account_circle_outlined,color: Colors.white,size: 22,),
                  ),
                ),
                Container(
                  height: 140,
                  width: 240,
                  margin: EdgeInsets.only(left: 10,right: 10,bottom: 5),
                  child: Image(
                    image: AssetImage('assets/images/img_12.png'),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.only(left: 20,right: 20),
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1,color: Color.fromRGBO(216, 194, 190, 1)),
              color: Color.fromRGBO(255, 248, 246, 1),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(left: 15,right: 15),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Color.fromRGBO(180, 39, 27, 1),
                    ),
                    child: Center(
                      child: Icon(Icons.payment,color: Colors.white,size: 22,),
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    margin: EdgeInsets.only(right: 110,top: 12,bottom: 12),
                    child: Image(
                      image: AssetImage('assets/images/img_13.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40,),
          GestureDetector(
            onTap: (){
              _homePage();
            },
            child: Container(
              margin: EdgeInsets.only(left: 50,right: 50,bottom: 40,top: 20),
              width: 110,
              height: 40,
              // color: Colors.red,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.red[900],
              ),
              child: Center(
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Icon(Icons.account_circle_outlined,size: 20,color: Colors.white,),
                    SizedBox(width: 10),
                    Text('Выйти',style: TextStyle(fontSize: 15,color: Colors.white),)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
