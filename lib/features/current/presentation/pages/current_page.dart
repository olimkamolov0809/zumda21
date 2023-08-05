import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:zumda/app/app_routes.dart';

class CurrentPage extends StatefulWidget {
  const CurrentPage({Key? key}) : super(key: key);

  @override
  State<CurrentPage> createState() => _CurrentPageState();
}

class _CurrentPageState extends State<CurrentPage> {
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

  _costpagecontroller() {
    setState(() {
      // Navigator.pushReplacementNamed(context, GatovPage.id);
      // Get.offNamed(AppRoutes);
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
              margin: const EdgeInsets.only(left: 20, right: 20, top: 80),
              height: 50,
              //color: Colors.grey,
              child: Row(
                children: [
                  const Icon(Icons.arrow_back_rounded,
                      size: 20, color: Colors.black),
                  const SizedBox(width: 15),
                  const Text('Заказ №32', style: TextStyle(fontSize: 24)),
                  const SizedBox(width: 148),
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
                  const SizedBox(height: 30),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              height: 240,
              width: 360,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromRGBO(255, 248, 246, 1),
                  border: Border.all(width: 2, color: Colors.black12)),
              child: Column(
                children: [
                  Container(
                    height: 80,
                    width: 360,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(width: 2, color: Colors.black12),
                      color: const Color.fromRGBO(255, 248, 246, 1),
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
                              padding: const EdgeInsets.only(
                                  left: 15, bottom: 10, top: 20),
                              child: const Column(
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
                            child: const Image(
                              image: AssetImage('assets/images/img_6.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  const SizedBox(
                    height: 100,
                    //color: Colors.blue,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(width: 350),
                        SizedBox(
                          height: 70,
                          width: 200,
                          child: Image(
                            image: AssetImage('assets/images/img_7.png'),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 10, right: 130),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Пожелание клиента',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          'Не добавляйте соусы. Спасибо.',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: 360,
              height: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromRGBO(255, 248, 246, 1),
                  border: Border.all(width: 2, color: Colors.black12)),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45),
                          color: Colors.red[900],
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.payments_outlined,
                            size: 28,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      padding:
                          const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Оплата',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18),
                          ),
                          Text(
                            'Наличными',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 15),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: 360,
              height: 125,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromRGBO(255, 248, 246, 1),
                  border: Border.all(width: 2, color: Colors.black12)),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 50),
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45),
                          color: Colors.red[900],
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.delivery_dining_outlined,
                            size: 28,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      padding:
                          const EdgeInsets.only(left: 10, top: 3, bottom: 5),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Доставка',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18),
                          ),
                          Image(image: AssetImage('assets/images/img_8.png')),
                          SizedBox(
                            height: 4,
                          ),
                          Text('ИMЯ: fghfhfn gfdhgfg'),
                          SizedBox(
                            height: 3,
                          ),
                          Text('Номер: +99899 567 52 45'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 140,
              color: const Color.fromRGBO(252, 223, 166, 1),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: const Row(
                      children: [
                        Text(
                          'ИТОГ: ',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          '116 000 сум',
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            _costpagecontroller();
                          },
                          child: Container(
                            width: 120,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.lightGreenAccent[400],
                            ),
                            child: const Center(
                                child: Text(
                              'ПРИНЯТЬ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            )),
                          ),
                        ),
                        const SizedBox(width: 100),
                        Container(
                          margin: const EdgeInsets.only(
                              right: 10, top: 10, bottom: 10),
                          width: 120,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            //border: Border.all(width: 1,color: Colors.grey),
                            color: Colors.red,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              _showDialog();
                            },
                            child: const Center(
                                child: Text(
                              'ОТМЕНА',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            )),
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