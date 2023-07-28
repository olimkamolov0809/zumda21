import 'package:flutter/material.dart';
import 'package:zumda/pages/gatov_page.dart';
import 'package:zumda/pages/user_page.dart';
class HozergiPage extends StatefulWidget {
  static final String id  = 'hozirgiPage';
  const HozergiPage({Key? key}) : super(key: key);

  @override
  State<HozergiPage> createState() => _HozergiPageState();
}

class _HozergiPageState extends State<HozergiPage> {

  void _showDialog(){
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Column(
            children: [
              Icon(Icons.delete_outline,size: 25),
              SizedBox(height: 15,),
              Text('Вы уверены?'),
            ],
          ),
          content:Text('Действие будет необратимо.',style: TextStyle(fontSize: 17),),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MaterialButton(
                  onPressed: (){},
                  child: Container(
                    width: 70,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.red,
                    ),
                    child: Center(
                      child: Text('Да'),
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: (){},
                  child: Container(
                    width: 70,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 1,color: Colors.black26),
                    ),
                    child: Center(
                      child: Text('Нет',style: TextStyle(color: Colors.red),),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      }
    );
  }

  _costpagecontroller(){
    setState(() {
      Navigator.pushReplacementNamed(context, GatovPage.id);
    });
  }

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
                  SizedBox(width: 15),
                  Text('Заказ №32',style: TextStyle(fontSize: 24)),
                  SizedBox(width: 148),
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
                  SizedBox(height: 30),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              height: 240,
              width: 360,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromRGBO(255, 248, 246, 1),
                  border: Border.all(width: 2,color: Colors.black12)
              ),
              child: Column(
                children: [
                  Container(
                    height: 80,
                    width: 360,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(width: 2,color: Colors.black12),
                      color: Color.fromRGBO(255, 248, 246, 1),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Container(
                              padding: EdgeInsets.only(left: 15,bottom: 10,top: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Манты с говядиной'),
                                  Text('Цена за 1 шт. = 7 000 сум'),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              //border: Border.all(width: 2,color: Colors.black12),
                            ),
                            child: Image(
                              image: AssetImage('assets/images/img_6.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 100,
                    //color: Colors.blue,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(width: 350),
                        Container(
                          height:70,
                          width: 200,
                          child: Image(
                            image: AssetImage('assets/images/img_7.png'),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10,right: 130),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Пожелание клиента',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w700),),
                        Text('Не добавляйте соусы. Спасибо.',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 360,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromRGBO(255, 248, 246, 1),
                  border: Border.all(width: 2,color: Colors.black12)
              ),
              child: Row(
                children: [
                  Expanded(
                    flex:1,
                    child: Center(
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45),
                          color: Colors.red[900],
                        ),
                        child: Center(
                          child: Icon(
                            Icons.payments_outlined,size: 28,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      padding: EdgeInsets.only(left:10,top: 10,bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Оплата',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
                          Text('Наличными',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15),)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 360,
              height: 125,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromRGBO(255, 248, 246, 1),
                  border: Border.all(width: 2,color: Colors.black12)
              ),
              child: Row(
                children: [
                  Expanded(
                    flex:1,
                    child: Center(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 50),
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45),
                          color: Colors.red[900],
                        ),
                        child: Center(
                          child: Icon(
                            Icons.delivery_dining_outlined,size: 28,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      padding: EdgeInsets.only(left:10,top: 3,bottom: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Доставка',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
                          Image(image: AssetImage('assets/images/img_8.png')),
                          SizedBox(height: 4,),
                          Text('ИMЯ: fghfhfn gfdhgfg'),
                          SizedBox(height: 3,),
                          Text('Номер: +99899 567 52 45'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 140,
              color: Color.fromRGBO(252, 223, 166, 1),
              child: Column(
               // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20,right: 20,top: 20),
                    child: Row(
                      children: [
                        Text('ИТОГ: ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                        Text('116 000 сум',style: TextStyle(fontSize: 19,fontWeight: FontWeight.w700),),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    margin: EdgeInsets.only(left: 20,right: 20,top: 10),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: (){
                            _costpagecontroller();
                          },
                          child: Container(
                            width: 120,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.lightGreenAccent[400],
                            ),
                            child: Center(
                                child: Text('ПРИНЯТЬ',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),)
                            ),
                          ),
                        ),
                        SizedBox(width: 100),
                        Container(
                          margin: EdgeInsets.only(right: 10,top: 10,bottom: 10),
                          width: 120,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            //border: Border.all(width: 1,color: Colors.grey),
                            color: Colors.red,
                          ),
                          child: GestureDetector(
                            onTap: (){
                              _showDialog();
                            },
                            child: Center(
                              child: Text('ОТМЕНА',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),)
                            ),
                          ),
                        ),
                      ],
                    ),
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
//948511089 958054247