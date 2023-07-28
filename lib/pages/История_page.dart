import 'package:flutter/material.dart';
import 'package:zumda/pages/user_page.dart';
class IstoriyaPage extends StatefulWidget {
  static final String id = 'istoriyaPage';
  const IstoriyaPage({Key? key}) : super(key: key);

  @override
  State<IstoriyaPage> createState() => _IstoriyaPageState();
}

class _IstoriyaPageState extends State<IstoriyaPage> {

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
              margin: EdgeInsets.only(left: 20,right: 20,top:80),
              height: 50,
              //color: Colors.grey,
              child: Row(
                children: [
                  Icon(Icons.arrow_back_rounded,size: 20,color: Colors.black),
                  Text('  История',style: TextStyle(fontSize: 24)),
                  SizedBox(width: 180),
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
                  SizedBox(height: 40),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.only(left: 20,right: 20),
              height: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 1,color: Colors.black45),
                color: Color.fromRGBO(255, 248, 246, 1),
              ),
              child: Column(
                children: [
                  Container(
                    //padding: EdgeInsets.only(left: 15,right: 15,top: 15),
                    //margin: EdgeInsets.only(left: 15,right: 15,top: 15),
                    height: 70,
                    //color: Colors.black45,
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
                              color: Colors.red[900],
                            ),
                            child: Center(
                              child: Icon(Icons.home_outlined,color: Colors.white),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Container(
                            padding: EdgeInsets.only(top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Заказ №23',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
                                Text("Улица Ислам Каримова, 38/12",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 110,
                    //color: Colors.grey,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 20,right: 20,top: 10),
                            child: Text('1)Плов Чайханский с бараниной'),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(right: 20,top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('1 шт.: 30 000'),
                                Text('1 пакет(-а): 2 000'),
                                Text('1 контейнер(-а): 2 000'),
                                SizedBox(height: 5),
                                Text('=34 000 сум',style: TextStyle(fontWeight: FontWeight.w700),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 120,right: 120),
                    height: 1,
                    color: Colors.black,
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 110,
                    //color: Colors.grey,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 20,top: 10),
                            child: Text('2)Манты с говядиной'),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(right: 20,top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('8 шт.: 56 000'),
                                Text('1 пакет(-а): 2 000'),
                                Text('2 контейнер(-а): 4 000'),
                                SizedBox(height: 5),
                                Text('=62 000 сум',style: TextStyle(fontWeight: FontWeight.w700),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 100,),
                    height: 60,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Пожелание клиента',style: TextStyle(fontWeight: FontWeight.w700),),
                        Text('Не добавляйте соусы. Спасибо.')
                      ],
                    ),
                  ),
                  Container(
                    padding:EdgeInsets.only(left: 10,right: 110),
                    child: Image(
                      height: 70,
                      image: AssetImage('assets/images/img_10.png'),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    padding: EdgeInsets.only(top: 5,bottom: 5,),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 20,right: 0),
                          child: Text('23.01.2023 15:11'),
                        ),
                        SizedBox(width: 65,),
                        Container(
                            height: 40,
                            width: 140,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              //border: Border.all(width: 1,color: Colors.grey),
                              color: Colors.black26,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.check,color: Colors.black54),
                                SizedBox(width: 5,),
                                Center(
                                  child: Text('Доставлен',style: TextStyle(color: Colors.black54,fontSize: 15),),
                                ),
                              ],
                            )
                          //decoration: ,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              margin: EdgeInsets.only(left: 20,right: 20),
              height: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 1,color: Colors.black45),
                color: Color.fromRGBO(255, 248, 246, 1),
              ),
              child: Column(
                children: [
                  Container(
                    //padding: EdgeInsets.only(left: 15,right: 15,top: 15),
                    //margin: EdgeInsets.only(left: 15,right: 15,top: 15),
                    height: 70,
                    //color: Colors.black45,
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
                              color: Colors.red[900],
                            ),
                            child: Center(
                              child: Icon(Icons.home_outlined,color: Colors.white),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Container(
                            padding: EdgeInsets.only(top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Заказ №23',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
                                Text("Улица Ислам Каримова, 38/12",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 110,
                    //color: Colors.grey,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 20,right: 20,top: 10),
                            child: Text('1)Плов Чайханский с бараниной'),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(right: 20,top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('1 шт.: 30 000'),
                                Text('1 пакет(-а): 2 000'),
                                Text('1 контейнер(-а): 2 000'),
                                SizedBox(height: 5),
                                Text('=34 000 сум',style: TextStyle(fontWeight: FontWeight.w700),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 120,right: 120),
                    height: 1,
                    color: Colors.black,
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 110,
                    //color: Colors.grey,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 20,top: 10),
                            child: Text('2)Манты с говядиной'),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(right: 20,top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('8 шт.: 56 000'),
                                Text('1 пакет(-а): 2 000'),
                                Text('2 контейнер(-а): 4 000'),
                                SizedBox(height: 5),
                                Text('=62 000 сум',style: TextStyle(fontWeight: FontWeight.w700),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 100,),
                    height: 60,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Пожелание клиента',style: TextStyle(fontWeight: FontWeight.w700),),
                        Text('Не добавляйте соусы. Спасибо.')
                      ],
                    ),
                  ),
                  Container(
                    padding:EdgeInsets.only(left: 10,right: 110),
                    child: Image(
                      height: 70,
                      image: AssetImage('assets/images/img_10.png'),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    padding: EdgeInsets.only(top: 5,bottom: 5,),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 20,right: 0),
                          child: Text('23.01.2023 15:11'),
                        ),
                        SizedBox(width: 65,),
                        Container(
                            height: 40,
                            width: 140,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              //border: Border.all(width: 1,color: Colors.grey),
                              color: Colors.black26,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.check,color: Colors.black54),
                                SizedBox(width: 5,),
                                Center(
                                  child: Text('Доставлен',style: TextStyle(color: Colors.black54,fontSize: 15),),
                                ),
                              ],
                            )
                          //decoration: ,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              margin: EdgeInsets.only(left: 20,right: 20),
              height: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 1,color: Colors.black45),
                color: Color.fromRGBO(255, 248, 246, 1),
              ),
              child: Column(
                children: [
                  Container(
                    //padding: EdgeInsets.only(left: 15,right: 15,top: 15),
                    //margin: EdgeInsets.only(left: 15,right: 15,top: 15),
                    height: 70,
                    //color: Colors.black45,
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
                              color: Colors.red[900],
                            ),
                            child: Center(
                              child: Icon(Icons.home_outlined,color: Colors.white),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Container(
                            padding: EdgeInsets.only(top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Заказ №23',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
                                Text("Улица Ислам Каримова, 38/12",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 110,
                    //color: Colors.grey,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 20,right: 20,top: 10),
                            child: Text('1)Плов Чайханский с бараниной'),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(right: 20,top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('1 шт.: 30 000'),
                                Text('1 пакет(-а): 2 000'),
                                Text('1 контейнер(-а): 2 000'),
                                SizedBox(height: 5),
                                Text('=34 000 сум',style: TextStyle(fontWeight: FontWeight.w700),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 120,right: 120),
                    height: 1,
                    color: Colors.black,
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 110,
                    //color: Colors.grey,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 20,top: 10),
                            child: Text('2)Манты с говядиной'),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(right: 20,top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('8 шт.: 56 000'),
                                Text('1 пакет(-а): 2 000'),
                                Text('2 контейнер(-а): 4 000'),
                                SizedBox(height: 5),
                                Text('=62 000 сум',style: TextStyle(fontWeight: FontWeight.w700),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 100,),
                    height: 60,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Пожелание клиента',style: TextStyle(fontWeight: FontWeight.w700),),
                        Text('Не добавляйте соусы. Спасибо.')
                      ],
                    ),
                  ),
                  Container(
                    padding:EdgeInsets.only(left: 10,right: 110),
                    child: Image(
                      height: 70,
                      image: AssetImage('assets/images/img_10.png'),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    padding: EdgeInsets.only(top: 5,bottom: 5,),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 20,right: 0),
                          child: Text('23.01.2023 15:11'),
                        ),
                        SizedBox(width: 65,),
                        Container(
                            height: 40,
                            width: 140,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              //border: Border.all(width: 1,color: Colors.grey),
                              color: Colors.black26,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.check,color: Colors.black54),
                                SizedBox(width: 5,),
                                Center(
                                  child: Text('Доставлен',style: TextStyle(color: Colors.black54,fontSize: 15),),
                                ),
                              ],
                            )
                          //decoration: ,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              margin: EdgeInsets.only(left: 20,right: 20),
              height: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 1,color: Colors.black45),
                color: Color.fromRGBO(255, 248, 246, 1),
              ),
              child: Column(
                children: [
                  Container(
                    //padding: EdgeInsets.only(left: 15,right: 15,top: 15),
                    //margin: EdgeInsets.only(left: 15,right: 15,top: 15),
                    height: 70,
                    //color: Colors.black45,
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
                              color: Colors.red[900],
                            ),
                            child: Center(
                              child: Icon(Icons.home_outlined,color: Colors.white),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Container(
                            padding: EdgeInsets.only(top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Заказ №23',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
                                Text("Улица Ислам Каримова, 38/12",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 110,
                    //color: Colors.grey,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 20,right: 20,top: 10),
                            child: Text('1)Плов Чайханский с бараниной'),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(right: 20,top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('1 шт.: 30 000'),
                                Text('1 пакет(-а): 2 000'),
                                Text('1 контейнер(-а): 2 000'),
                                SizedBox(height: 5),
                                Text('=34 000 сум',style: TextStyle(fontWeight: FontWeight.w700),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 120,right: 120),
                    height: 1,
                    color: Colors.black,
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 110,
                    //color: Colors.grey,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 20,top: 10),
                            child: Text('2)Манты с говядиной'),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(right: 20,top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('8 шт.: 56 000'),
                                Text('1 пакет(-а): 2 000'),
                                Text('2 контейнер(-а): 4 000'),
                                SizedBox(height: 5),
                                Text('=62 000 сум',style: TextStyle(fontWeight: FontWeight.w700),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 100,),
                    height: 60,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Пожелание клиента',style: TextStyle(fontWeight: FontWeight.w700),),
                        Text('Не добавляйте соусы. Спасибо.')
                      ],
                    ),
                  ),
                  Container(
                    padding:EdgeInsets.only(left: 10,right: 110),
                    child: Image(
                      height: 70,
                      image: AssetImage('assets/images/img_10.png'),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    padding: EdgeInsets.only(top: 5,bottom: 5,),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 20,right: 0),
                          child: Text('23.01.2023 15:11'),
                        ),
                        SizedBox(width: 65,),
                        Container(
                            height: 40,
                            width: 140,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              //border: Border.all(width: 1,color: Colors.grey),
                              color: Colors.black26,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.check,color: Colors.black54),
                                SizedBox(width: 5,),
                                Center(
                                  child: Text('Доставлен',style: TextStyle(color: Colors.black54,fontSize: 15),),
                                ),
                              ],
                            )
                          //decoration: ,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
