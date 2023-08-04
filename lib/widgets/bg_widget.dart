import 'package:flutter/cupertino.dart';
import 'package:zumda/app/app_images.dart';

Widget bgWidget(Widget widget) {
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(AppImages.BG),
        fit: BoxFit.cover,
        opacity: 0.7,
      ),
    ),
    child: widget,
  );
}
