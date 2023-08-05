import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:zumda/app/app_colors.dart';
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
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool isLoading = false;

  _submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      Get.offNamed(AppRoutes.HOME);
    }
  }

  _validatorPassword(String? input) {
    if (input == null) {
      return 'Неверные данные.';
    } else if (input.isEmpty) {
      return 'Неверные данные.';
    } else if (input.toString().trim().length <= 6) {
      return 'Неверные данные.';
    } else {
      return null;
    }
  }

  _doSignInPage() {
    String email = _emailController.text.toString().trim();
    String password = _passwordController.text.toString().trim();
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
                width: 56,
                height: 56,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: const Color(0xFFFFDAD5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x4C000000),
                      blurRadius: 3,
                      offset: Offset(0, 1),
                      spreadRadius: 0,
                    ),
                    BoxShadow(
                      color: Color(0x26000000),
                      blurRadius: 8,
                      offset: Offset(0, 4),
                      spreadRadius: 3,
                    )
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
              const Gap(57.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AppImages.TIME,
                    width: 280.0,
                    height: 140.0,
                  ),
                ],
              ),
              const Gap(60.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 36.0),
                child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _emailController,
                          validator: (input) =>
                              input!.trim().isEmpty ? 'Неверные данные.' : null,
                          style: TextStyle(
                            color: AppColors.BLACK,
                            fontSize: SizeConfig.calculateTextSize(16),
                            fontWeight: FontWeight.w400,
                          ),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: AppColors.ANTIQUEWHITE,
                            focusColor: AppColors.BLACK,
                            hintText: '+998 93 286 54 63',
                            labelText: 'Логин',
                            suffixIcon: IconButton(
                              icon: const Icon(
                                Icons.cancel_outlined,
                                color: Colors.black,
                              ),
                              onPressed: () => _emailController.text = '',
                            ),
                            labelStyle: TextStyle(
                              color: AppColors.BLACK,
                              fontSize: SizeConfig.calculateTextSize(16),
                              fontWeight: FontWeight.w400,
                            ),
                            hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: SizeConfig.calculateTextSize(16),
                              fontWeight: FontWeight.w400,
                              height: 1.50,
                            ),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.red, width: 2.0),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColors.BLACK, width: 2),
                            ),
                          ),
                        ),
                        const Gap(40),
                        TextFormField(
                          controller: _passwordController,
                          validator: (input) => _validatorPassword(input),
                          obscureText: true,
                          style: TextStyle(
                            color: AppColors.BLACK,
                            fontSize: SizeConfig.calculateTextSize(16),
                            fontWeight: FontWeight.w400,
                          ),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: AppColors.ANTIQUEWHITE,
                            labelText: 'Пароль',
                            suffixIcon: IconButton(
                              icon: const Icon(
                                Icons.cancel_outlined,
                                color: Colors.black,
                              ),
                              onPressed: () => _emailController.text = '',
                            ),
                            labelStyle: TextStyle(
                              color: AppColors.BLACK,
                              fontSize: SizeConfig.calculateTextSize(16),
                              fontWeight: FontWeight.w400,
                            ),
                            hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: SizeConfig.calculateTextSize(16),
                              fontWeight: FontWeight.w400,
                              height: 1.50,
                            ),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.red,
                                width: 2.0,
                              ),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColors.BLACK, width: 2),
                            ),
                          ),
                        )
                      ],
                    )),
              ),
              const Gap(60),
              GestureDetector(
                onTap: _submit,
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
