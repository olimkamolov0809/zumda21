import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:zumda/app/app_routes.dart';
import 'package:zumda/core/utils.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  _userPageTap() {
    setState(() {
      Get.offNamed(AppRoutes.USER);
    });
  }

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.width;
    SizeConfig().init(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                  left: SizeConfig.calculateBlockHorizontal(10),
                  top: SizeConfig.calculateBlockVertical(40)),
              height: 50,
              //color: Colors.black26,
              child: Row(
                children: [
                  const Text(
                    'Новые',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(width: 235),
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
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              height: 250,
              width: 370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromRGBO(255, 218, 213, 1),
              ),
              child: Column(
                children: [
                  Container(
                      margin:
                          const EdgeInsets.only(left: 10, right: 10, top: 10),
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
                            child: const Icon(
                              Icons.home_outlined,
                              size: 25,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const Text(
                            'Заказ №23',
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      )),
                  const SizedBox(height: 30),
                  const Text(
                    'Плов Чайханский с бараниной                       1 шт.',
                    style: TextStyle(fontSize: 13),
                  ),
                  const SizedBox(height: 3),
                  const Text(
                    'Манты с говядиной                                           1 шт.',
                    style: TextStyle(fontSize: 13),
                  ),
                  const SizedBox(height: 3),
                  const Text(
                    'Манты с говядиной                                           1 шт.',
                    style: TextStyle(fontSize: 13),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    margin: const EdgeInsets.only(left: 16, right: 123),
                    child: const Text(
                      'Сумма  заказа:    140 000 сум',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 16, right: 256),
                    child: const Text(
                      '23.01.2023 15:11',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              height: 250,
              width: 370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromRGBO(255, 218, 213, 1),
              ),
              child: Column(
                children: [
                  Container(
                      margin:
                          const EdgeInsets.only(left: 10, right: 10, top: 10),
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
                            child: const Icon(
                              Icons.home_outlined,
                              size: 25,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const Text(
                            'Заказ №33',
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      )),
                  const SizedBox(height: 30),
                  const Text(
                    'Плов Чайханский с бараниной                       1 шт.',
                    style: TextStyle(fontSize: 13),
                  ),
                  const SizedBox(height: 3),
                  const Text(
                    'Манты с говядиной                                           1 шт.',
                    style: TextStyle(fontSize: 13),
                  ),
                  const SizedBox(height: 3),
                  const Text(
                    'Манты с говядиной                                           1 шт.',
                    style: TextStyle(fontSize: 13),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    margin: const EdgeInsets.only(left: 16, right: 123),
                    child: const Text(
                      'Сумма  заказа:    140 000 сум',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 16, right: 256),
                    child: const Text(
                      '23.01.2023 15:11',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              height: 250,
              width: 370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromRGBO(255, 218, 213, 1),
              ),
              child: Column(
                children: [
                  Container(
                      margin:
                          const EdgeInsets.only(left: 10, right: 10, top: 10),
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
                            child: const Icon(
                              Icons.home_outlined,
                              size: 25,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const Text(
                            'Заказ №41',
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      )),
                  const SizedBox(height: 30),
                  const Text(
                    'Плов Чайханский с бараниной                       1 шт.',
                    style: TextStyle(fontSize: 13),
                  ),
                  const SizedBox(height: 3),
                  const Text(
                    'Манты с говядиной                                           1 шт.',
                    style: TextStyle(fontSize: 13),
                  ),
                  const SizedBox(height: 3),
                  const Text(
                    'Манты с говядиной                                           1 шт.',
                    style: TextStyle(fontSize: 13),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    margin: const EdgeInsets.only(left: 16, right: 123),
                    child: const Text(
                      'Сумма  заказа:    140 000 сум',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 16, right: 256),
                    child: const Text(
                      '23.01.2023 15:11',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              height: 250,
              width: 370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromRGBO(255, 218, 213, 1),
              ),
              child: Column(
                children: [
                  Container(
                      margin:
                          const EdgeInsets.only(left: 10, right: 10, top: 10),
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
                            child: const Icon(
                              Icons.home_outlined,
                              size: 25,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const Text(
                            'Заказ №23',
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      )),
                  const SizedBox(height: 30),
                  const Text(
                    'Плов Чайханский с бараниной                       1 шт.',
                    style: TextStyle(fontSize: 13),
                  ),
                  const SizedBox(height: 3),
                  const Text(
                    'Манты с говядиной                                           1 шт.',
                    style: TextStyle(fontSize: 13),
                  ),
                  const SizedBox(height: 3),
                  const Text(
                    'Манты с говядиной                                           1 шт.',
                    style: TextStyle(fontSize: 13),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    margin: const EdgeInsets.only(left: 16, right: 123),
                    child: const Text(
                      'Сумма  заказа:    140 000 сум',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 16, right: 256),
                    child: const Text(
                      '23.01.2023 15:11',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              height: 250,
              width: 370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromRGBO(255, 218, 213, 1),
              ),
              child: Column(
                children: [
                  Container(
                      margin:
                          const EdgeInsets.only(left: 10, right: 10, top: 10),
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
                            child: const Icon(
                              Icons.home_outlined,
                              size: 25,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const Text(
                            'Заказ №23',
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      )),
                  const SizedBox(height: 30),
                  const Text(
                    'Плов Чайханский с бараниной                       1 шт.',
                    style: TextStyle(fontSize: 13),
                  ),
                  const SizedBox(height: 3),
                  const Text(
                    'Манты с говядиной                                           1 шт.',
                    style: TextStyle(fontSize: 13),
                  ),
                  const SizedBox(height: 3),
                  const Text(
                    'Манты с говядиной                                           1 шт.',
                    style: TextStyle(fontSize: 13),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    margin: const EdgeInsets.only(left: 16, right: 123),
                    child: const Text(
                      'Сумма  заказа:    140 000 сум',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 16, right: 256),
                    child: const Text(
                      '23.01.2023 15:11',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
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
