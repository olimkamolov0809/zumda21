import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:zumda/app/app_routes.dart';

class ReadyOrder extends StatefulWidget {
  static const String id = 'gatov_page';
  const ReadyOrder({Key? key}) : super(key: key);

  @override
  State<ReadyOrder> createState() => _ReadyOrderState();
}

class _ReadyOrderState extends State<ReadyOrder> {
  _outpage() {
    setState(() {
      // Navigator.pushReplacementNamed(context, HozergiPage.id);
    });
  }

  void _showDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Column(
              children: [
                Icon(Icons.delete_outline, size: 25),
                SizedBox(
                  height: 15,
                ),
                Text('Вы уверены?'),
              ],
            ),
            content: const Text(
              'Действие будет необратимо.',
              style: TextStyle(fontSize: 17),
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MaterialButton(
                    onPressed: () {},
                    child: Container(
                      width: 70,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red,
                      ),
                      child: const Center(
                        child: Text('Да'),
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    child: Container(
                      width: 70,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 1, color: Colors.black26),
                      ),
                      child: const Center(
                        child: Text(
                          'Нет',
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        });
  }

  _userPageTap() {
    setState(() {
      Get.offNamed(AppRoutes.USER);
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
              margin: const EdgeInsets.only(left: 20, right: 20, top: 40),
              height: 50,
              //color: Colors.grey,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      _outpage();
                    },
                    child: const Icon(Icons.arrow_back_rounded,
                        size: 20, color: Colors.black),
                  ),
                  const Text(' Текущие', style: TextStyle(fontSize: 24)),
                  const SizedBox(width: 180),
                  GestureDetector(
                    onTap: () {
                      _userPageTap();
                    },
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: Colors.black),
                      child: const Image(
                        image: AssetImage('assets/images/img_4.png'),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              height: 520,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 1, color: Colors.black45),
                color: const Color.fromRGBO(255, 248, 246, 1),
              ),
              child: Column(
                children: [
                  SizedBox(
                    //padding: EdgeInsets.only(left: 15,right: 15,top: 15),
                    //margin: EdgeInsets.only(left: 15,right: 15,top: 15),
                    height: 70,
                    //color: Colors.black45,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: const EdgeInsets.only(left: 15, right: 15),
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.red[900],
                            ),
                            child: const Center(
                              child: Icon(Icons.home_outlined,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Container(
                            padding: const EdgeInsets.only(top: 10),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Заказ №23',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  "Улица Ислам Каримова, 38/12",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 110,
                    //color: Colors.grey,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 10),
                            child: const Text('1)Плов Чайханский с бараниной'),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.only(right: 20, top: 10),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('1 шт.: 30 000'),
                                Text('1 пакет(-а): 2 000'),
                                Text('1 контейнер(-а): 2 000'),
                                SizedBox(height: 5),
                                Text(
                                  '=34 000 сум',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 120, right: 120),
                    height: 1,
                    color: Colors.black,
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 110,
                    //color: Colors.grey,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.only(left: 20, top: 10),
                            child: const Text('2)Манты с говядиной'),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.only(right: 20, top: 10),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('8 шт.: 56 000'),
                                Text('1 пакет(-а): 2 000'),
                                Text('2 контейнер(-а): 4 000'),
                                SizedBox(height: 5),
                                Text(
                                  '=62 000 сум',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 100,
                    ),
                    height: 60,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Пожелание клиента',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        Text('Не добавляйте соусы. Спасибо.')
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 10, right: 110),
                    child: const Image(
                      height: 70,
                      image: AssetImage('assets/images/img_10.png'),
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.hourglass_top,
                        size: 18,
                        color: Colors.black26,
                      ),
                      Text(
                        '  В процессе...   ',
                        style: TextStyle(fontSize: 18, color: Colors.black26),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      top: 5,
                      bottom: 5,
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 20, right: 0),
                          child: const Text('23.01.2023 15:11'),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 40,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 1, color: Colors.grey),
                            //color: Colors.red,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              _showDialog();
                            },
                            child: const Center(
                              child: Text(
                                'Отмена',
                                style:
                                    TextStyle(color: Colors.red, fontSize: 15),
                              ),
                            ),
                          ),
                          //decoration: ,
                        ),
                        const SizedBox(width: 8),
                        Container(
                          height: 40,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.red,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              _showDialog();
                            },
                            child: const Center(
                              child: Text(
                                'Готово',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                          ),
                          //decoration: ,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              height: 520,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 1, color: Colors.black45),
                color: const Color.fromRGBO(255, 248, 246, 1),
              ),
              child: Column(
                children: [
                  SizedBox(
                    //padding: EdgeInsets.only(left: 15,right: 15,top: 15),
                    //margin: EdgeInsets.only(left: 15,right: 15,top: 15),
                    height: 70,
                    //color: Colors.black45,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: const EdgeInsets.only(left: 15, right: 15),
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.red[900],
                            ),
                            child: const Center(
                              child: Icon(Icons.home_outlined,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Container(
                            padding: const EdgeInsets.only(top: 10),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Заказ №33',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  "Улица Ислам Каримова, 38/12",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 110,
                    //color: Colors.grey,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 10),
                            child: const Text('1)Плов Чайханский с бараниной'),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.only(right: 20, top: 10),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('1 шт.: 30 000'),
                                Text('1 пакет(-а): 2 000'),
                                Text('1 контейнер(-а): 2 000'),
                                SizedBox(height: 5),
                                Text(
                                  '=34 000 сум',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 120, right: 120),
                    height: 1,
                    color: Colors.black,
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 110,
                    //color: Colors.grey,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.only(left: 20, top: 10),
                            child: const Text('2)Манты с говядиной'),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.only(right: 20, top: 10),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('8 шт.: 56 000'),
                                Text('1 пакет(-а): 2 000'),
                                Text('2 контейнер(-а): 4 000'),
                                SizedBox(height: 5),
                                Text(
                                  '=62 000 сум',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 100,
                    ),
                    height: 60,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Пожелание клиента',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        Text('Не добавляйте соусы. Спасибо.')
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 10, right: 110),
                    child: const Image(
                      height: 70,
                      image: AssetImage('assets/images/img_10.png'),
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.hourglass_top,
                        size: 18,
                        color: Colors.black26,
                      ),
                      Text(
                        '  В процессе...   ',
                        style: TextStyle(fontSize: 18, color: Colors.black26),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      top: 5,
                      bottom: 5,
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 20, right: 0),
                          child: const Text('23.01.2023 15:11'),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 40,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 1, color: Colors.grey),
                            //color: Colors.red,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              _showDialog();
                            },
                            child: const Center(
                              child: Text(
                                'Отмена',
                                style:
                                    TextStyle(color: Colors.red, fontSize: 15),
                              ),
                            ),
                          ),
                          //decoration: ,
                        ),
                        const SizedBox(width: 8),
                        Container(
                          height: 40,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.red,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              _showDialog();
                            },
                            child: const Center(
                              child: Text(
                                'Готово',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                          ),
                          //decoration: ,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              height: 520,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 1, color: Colors.black45),
                color: const Color.fromRGBO(255, 248, 246, 1),
              ),
              child: Column(
                children: [
                  SizedBox(
                    //padding: EdgeInsets.only(left: 15,right: 15,top: 15),
                    //margin: EdgeInsets.only(left: 15,right: 15,top: 15),
                    height: 70,
                    //color: Colors.black45,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: const EdgeInsets.only(left: 15, right: 15),
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.red[900],
                            ),
                            child: const Center(
                              child: Icon(Icons.home_outlined,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Container(
                            padding: const EdgeInsets.only(top: 10),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Заказ №23',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  "Улица Ислам Каримова, 38/12",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 110,
                    //color: Colors.grey,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 10),
                            child: const Text('1)Плов Чайханский с бараниной'),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.only(right: 20, top: 10),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('1 шт.: 30 000'),
                                Text('1 пакет(-а): 2 000'),
                                Text('1 контейнер(-а): 2 000'),
                                SizedBox(height: 5),
                                Text(
                                  '=34 000 сум',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 120, right: 120),
                    height: 1,
                    color: Colors.black,
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 110,
                    //color: Colors.grey,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.only(left: 20, top: 10),
                            child: const Text('2)Манты с говядиной'),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.only(right: 20, top: 10),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('8 шт.: 56 000'),
                                Text('1 пакет(-а): 2 000'),
                                Text('2 контейнер(-а): 4 000'),
                                SizedBox(height: 5),
                                Text(
                                  '=62 000 сум',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 100,
                    ),
                    height: 60,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Пожелание клиента',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        Text('Не добавляйте соусы. Спасибо.')
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 10, right: 110),
                    child: const Image(
                      height: 70,
                      image: AssetImage('assets/images/img_10.png'),
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.hourglass_top,
                        size: 18,
                        color: Colors.black26,
                      ),
                      Text(
                        '  В процессе...   ',
                        style: TextStyle(fontSize: 18, color: Colors.black26),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      top: 5,
                      bottom: 5,
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 20, right: 0),
                          child: const Text('23.01.2023 15:11'),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 40,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 1, color: Colors.grey),
                            //color: Colors.red,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              _showDialog();
                            },
                            child: const Center(
                              child: Text(
                                'Отмена',
                                style:
                                    TextStyle(color: Colors.red, fontSize: 15),
                              ),
                            ),
                          ),
                          //decoration: ,
                        ),
                        const SizedBox(width: 8),
                        Container(
                          height: 40,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.red,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              _showDialog();
                            },
                            child: const Center(
                              child: Text(
                                'Готово',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                          ),
                          //decoration: ,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              height: 520,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 1, color: Colors.black45),
                color: const Color.fromRGBO(255, 248, 246, 1),
              ),
              child: Column(
                children: [
                  SizedBox(
                    //padding: EdgeInsets.only(left: 15,right: 15,top: 15),
                    //margin: EdgeInsets.only(left: 15,right: 15,top: 15),
                    height: 70,
                    //color: Colors.black45,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: const EdgeInsets.only(left: 15, right: 15),
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.red[900],
                            ),
                            child: const Center(
                              child: Icon(Icons.home_outlined,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Container(
                            padding: const EdgeInsets.only(top: 10),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Заказ №23',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  "Улица Ислам Каримова, 38/12",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 110,
                    //color: Colors.grey,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 10),
                            child: const Text('1)Плов Чайханский с бараниной'),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.only(right: 20, top: 10),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('1 шт.: 30 000'),
                                Text('1 пакет(-а): 2 000'),
                                Text('1 контейнер(-а): 2 000'),
                                SizedBox(height: 5),
                                Text(
                                  '=34 000 сум',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 120, right: 120),
                    height: 1,
                    color: Colors.black,
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 110,
                    //color: Colors.grey,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.only(left: 20, top: 10),
                            child: const Text('2)Манты с говядиной'),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.only(right: 20, top: 10),
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('8 шт.: 56 000'),
                                Text('1 пакет(-а): 2 000'),
                                Text('2 контейнер(-а): 4 000'),
                                SizedBox(height: 5),
                                Text(
                                  '=62 000 сум',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 100,
                    ),
                    height: 60,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Пожелание клиента',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        Text('Не добавляйте соусы. Спасибо.')
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 10, right: 110),
                    child: const Image(
                      height: 70,
                      image: AssetImage('assets/images/img_10.png'),
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.hourglass_top,
                        size: 18,
                        color: Colors.black26,
                      ),
                      Text(
                        '  В процессе...   ',
                        style: TextStyle(fontSize: 18, color: Colors.black26),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      top: 5,
                      bottom: 5,
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 20, right: 0),
                          child: const Text('23.01.2023 15:11'),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 40,
                          width: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 1, color: Colors.grey),
                            //color: Colors.red,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              _showDialog();
                            },
                            child: const Center(
                              child: Text(
                                'Отмена',
                                style:
                                    TextStyle(color: Colors.red, fontSize: 15),
                              ),
                            ),
                          ),
                          //decoration: ,
                        ),
                        const SizedBox(width: 8),
                        GestureDetector(
                          onTap: () {
                            _showDialog();
                          },
                          child: Container(
                            height: 40,
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.red,
                            ),
                            child: const Center(
                              child: Text(
                                'Готово',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                            //decoration: ,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
