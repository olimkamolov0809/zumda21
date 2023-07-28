import 'package:flutter/material.dart';
import 'package:zumda/pages/user_page.dart';
class NovePage extends StatefulWidget {
  static final String id = 'NovePage';
  const NovePage({Key? key}) : super(key: key);

  @override
  State<NovePage> createState() => _NovePageState();
}

class _NovePageState extends State<NovePage> {

  _userPageTap(){
    setState(() {
      Navigator.pushReplacementNamed(context, UserPage.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left:10,top: 40),
              height: 50,
              //color: Colors.black26,
              child: Row(
                children: [
                  Text('Новые',style: TextStyle(fontSize: 24,color: Colors.black,fontWeight: FontWeight.w500),),
                  SizedBox(width: 235),
                  GestureDetector(
                    onTap: (){
                      _userPageTap();
                    },
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: Colors.black
                      ),
                      child: Image(
                        image: AssetImage('assets/images/img_4.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40,),
            Container(
              margin: EdgeInsets.only(left: 20,right: 20),
              height: 250,
              width: 370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromRGBO(255, 218, 213, 1),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10,right: 10,top: 10),
                    //color: Colors.grey,
                    height: 40,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            color: Colors.red[900],
                          ),
                          child: Icon(
                            Icons.home_outlined,size: 25,color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 15,),
                        Text('Заказ №23',style: TextStyle(fontSize: 20),)
                      ],
                    )
                  ),
                  SizedBox(height: 30),
                  Text('Плов Чайханский с бараниной                       1 шт.',style: TextStyle(fontSize: 13),),
                  SizedBox(height: 3),
                  Text('Манты с говядиной                                           1 шт.',style: TextStyle(fontSize: 13),),
                  SizedBox(height: 3),
                  Text('Манты с говядиной                                           1 шт.',style: TextStyle(fontSize: 13),),
                  SizedBox(height: 15),
                  Container(
                    margin: EdgeInsets.only(left: 16,right: 123),
                    child:Text('Сумма  заказа:    140 000 сум',style: TextStyle(fontSize: 15),),
                  ),
                  SizedBox(height: 32,),
                  Container(
                    margin: EdgeInsets.only(left: 16,right: 256),
                    child:Text('23.01.2023 15:11',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.only(left: 20,right: 20),
              height: 250,
              width: 370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromRGBO(255, 218, 213, 1),
              ),
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 10,right: 10,top: 10),
                      //color: Colors.grey,
                      height: 40,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                              color: Colors.red[900],
                            ),
                            child: Icon(
                              Icons.home_outlined,size: 25,color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 15,),
                          Text('Заказ №33',style: TextStyle(fontSize: 20),)
                        ],
                      )
                  ),
                  SizedBox(height: 30),
                  Text('Плов Чайханский с бараниной                       1 шт.',style: TextStyle(fontSize: 13),),
                  SizedBox(height: 3),
                  Text('Манты с говядиной                                           1 шт.',style: TextStyle(fontSize: 13),),
                  SizedBox(height: 3),
                  Text('Манты с говядиной                                           1 шт.',style: TextStyle(fontSize: 13),),
                  SizedBox(height: 15),
                  Container(
                    margin: EdgeInsets.only(left: 16,right: 123),
                    child:Text('Сумма  заказа:    140 000 сум',style: TextStyle(fontSize: 15),),
                  ),
                  SizedBox(height: 32,),
                  Container(
                    margin: EdgeInsets.only(left: 16,right: 256),
                    child:Text('23.01.2023 15:11',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.only(left: 20,right: 20),
              height: 250,
              width: 370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromRGBO(255, 218, 213, 1),
              ),
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 10,right: 10,top: 10),
                      //color: Colors.grey,
                      height: 40,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                              color: Colors.red[900],
                            ),
                            child: Icon(
                              Icons.home_outlined,size: 25,color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 15,),
                          Text('Заказ №41',style: TextStyle(fontSize: 20),)
                        ],
                      )
                  ),
                  SizedBox(height: 30),
                  Text('Плов Чайханский с бараниной                       1 шт.',style: TextStyle(fontSize: 13),),
                  SizedBox(height: 3),
                  Text('Манты с говядиной                                           1 шт.',style: TextStyle(fontSize: 13),),
                  SizedBox(height: 3),
                  Text('Манты с говядиной                                           1 шт.',style: TextStyle(fontSize: 13),),
                  SizedBox(height: 15),
                  Container(
                    margin: EdgeInsets.only(left: 16,right: 123),
                    child:Text('Сумма  заказа:    140 000 сум',style: TextStyle(fontSize: 15),),
                  ),
                  SizedBox(height: 32,),
                  Container(
                    margin: EdgeInsets.only(left: 16,right: 256),
                    child:Text('23.01.2023 15:11',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.only(left: 20,right: 20),
              height: 250,
              width: 370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromRGBO(255, 218, 213, 1),
              ),
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 10,right: 10,top: 10),
                      //color: Colors.grey,
                      height: 40,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                              color: Colors.red[900],
                            ),
                            child: Icon(
                              Icons.home_outlined,size: 25,color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 15,),
                          Text('Заказ №23',style: TextStyle(fontSize: 20),)
                        ],
                      )
                  ),
                  SizedBox(height: 30),
                  Text('Плов Чайханский с бараниной                       1 шт.',style: TextStyle(fontSize: 13),),
                  SizedBox(height: 3),
                  Text('Манты с говядиной                                           1 шт.',style: TextStyle(fontSize: 13),),
                  SizedBox(height: 3),
                  Text('Манты с говядиной                                           1 шт.',style: TextStyle(fontSize: 13),),
                  SizedBox(height: 15),
                  Container(
                    margin: EdgeInsets.only(left: 16,right: 123),
                    child:Text('Сумма  заказа:    140 000 сум',style: TextStyle(fontSize: 15),),
                  ),
                  SizedBox(height: 32,),
                  Container(
                    margin: EdgeInsets.only(left: 16,right: 256),
                    child:Text('23.01.2023 15:11',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.only(left: 20,right: 20),
              height: 250,
              width: 370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromRGBO(255, 218, 213, 1),
              ),
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 10,right: 10,top: 10),
                      //color: Colors.grey,
                      height: 40,
                      width: double.infinity,
                      child: Row(
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35),
                              color: Colors.red[900],
                            ),
                            child: Icon(
                              Icons.home_outlined,size: 25,color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 15,),
                          Text('Заказ №23',style: TextStyle(fontSize: 20),)
                        ],
                      )
                  ),
                  SizedBox(height: 30),
                  Text('Плов Чайханский с бараниной                       1 шт.',style: TextStyle(fontSize: 13),),
                  SizedBox(height: 3),
                  Text('Манты с говядиной                                           1 шт.',style: TextStyle(fontSize: 13),),
                  SizedBox(height: 3),
                  Text('Манты с говядиной                                           1 шт.',style: TextStyle(fontSize: 13),),
                  SizedBox(height: 15),
                  Container(
                    margin: EdgeInsets.only(left: 16,right: 123),
                    child:Text('Сумма  заказа:    140 000 сум',style: TextStyle(fontSize: 15),),
                  ),
                  SizedBox(height: 32,),
                  Container(
                    margin: EdgeInsets.only(left: 16,right: 256),
                    child:Text('23.01.2023 15:11',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
