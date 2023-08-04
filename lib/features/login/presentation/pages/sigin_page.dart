import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:zumda/app/app_images.dart';
import 'package:zumda/app/app_routes.dart';
import 'package:zumda/core/utils.dart';
import 'package:zumda/widgets/bg_widget.dart';

class SigInPage extends StatefulWidget {
  static const String id = 'sigin_page';
  const SigInPage({Key? key}) : super(key: key);

  @override
  State<SigInPage> createState() => _SigInPageState();
}

class _SigInPageState extends State<SigInPage> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  bool isLoading = false;

  _doSignInPage() {
    String email = emailController.text.toString().trim();
    String password = passwordController.text.toString().trim();
    if (email.isEmpty || password.isEmpty) return;

    setState(() {
      isLoading = true;
    });

    Get.offNamed(AppRoutes.HOME);
  }

  _responseSignIn() {
    setState(() {
      isLoading = false;
    });
  }

  // _callInPage() {
  //   setState(() {
  //     Navigator.pushReplacementNamed(context, SignUpPage.id);
  //   });
  // }

  // _homepage() {
  //   setState(() {
  //     // Navigator.pushReplacementNamed(context, HomePage2.id);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.width;
    SizeConfig().init(context);

    return Scaffold(
      body: bgWidget(
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                    left: SizeConfig.calculateBlockHorizontal(300),
                    right: SizeConfig.calculateBlockHorizontal(10),
                    top: SizeConfig.calculateBlockVertical(70)),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromRGBO(255, 218, 213, 1),
                  boxShadow: const [
                    //BoxShadow(color: Colors.black12,offset: Offset(2.0, 2.0)),
                    BoxShadow(
                        color: Colors.black12, offset: Offset(-2.0, -2.0)),
                  ],
                ),
                child: GestureDetector(
                  onTap: () {
                    Utils.makePhoneCall("+998930775777");
                  },
                  child: const Center(
                    child: Icon(
                      Icons.phone_outlined,
                      size: 25,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 60),
              Container(
                margin: const EdgeInsets.only(left: 60, right: 60),
                child: Image.asset(AppImages.TIME),
              ),
              const SizedBox(height: 60),
              Container(
                padding: EdgeInsets.only(
                    left: SizeConfig.calculateBlockHorizontal(35)),
                child: Text(
                  'Логин',
                  style: TextStyle(fontSize: SizeConfig.calculateTextSize(16)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: SizeConfig.calculateBlockHorizontal(20),
                    right: SizeConfig.calculateBlockHorizontal(20)),
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(255, 218, 213, 1),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 20),
                            child: TextField(
                              controller: emailController,
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 20),
                              decoration: const InputDecoration(
                                hintText: 'Email',
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                    fontSize: 20, color: Colors.black26),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 50),
                    const Expanded(
                      flex: 1,
                      child: Icon(Icons.cancel_outlined),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 35),
                child: const Text(
                  'Неверные данные.',
                  style: TextStyle(fontSize: 14, color: Colors.black38),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(left: 35),
                child: const Text(
                  'Пароль',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(255, 218, 213, 1),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 20),
                            child: TextField(
                              controller: passwordController,
                              obscureText: true,
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 20),
                              decoration: const InputDecoration(
                                hintText: '***********',
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                    fontSize: 20, color: Colors.black26),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 50),
                    const Expanded(
                      flex: 1,
                      child: Icon(Icons.cancel_outlined),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 35),
                child: const Text(
                  'Неверные данные.',
                  style: TextStyle(fontSize: 14, color: Colors.black38),
                ),
              ),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  _doSignInPage();
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 150, right: 150),
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: const Color.fromRGBO(255, 218, 213, 1),
                  ),
                  child: Stack(
                    children: [
                      const Center(
                        child: Text('Войти'),
                      ),
                      isLoading
                          ? const Center(
                              child: CircularProgressIndicator(),
                            )
                          : const SizedBox.shrink(),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  //Utils.makePhoneCall("+998930775777");
                },
                child: Container(
                  child: const Center(
                    child: Text(
                      'Забыли пароль?',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Container(
                child: const Center(
                  child: Text(
                    'Вас нет в нашей системе? Создать аккаунт',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }
}

//906675878 973141411