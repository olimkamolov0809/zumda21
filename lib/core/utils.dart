import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/instance_manager.dart';

class Utils {
  static Future<void> makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(scheme: 'tel', path: phoneNumber);
    await launchUrl(launchUri);
  }
}

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? blockSizeHorizontal;
  static double? blockSizeVertical;

  static double? _safeAreaHorizontal;
  static double? _safeAreaVertical;
  static double? safeBlockHorizontal;
  static double? safeBlockVertical;
  static double? screenPercentage;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    // screenWidth=375;
    // screenHeight=812;

    _safeAreaHorizontal =
        _mediaQueryData!.padding.left + _mediaQueryData!.padding.right;
    _safeAreaVertical =
        _mediaQueryData!.padding.top + _mediaQueryData!.padding.bottom;
    safeBlockHorizontal = (screenWidth! / 100 - _safeAreaHorizontal! / 100);
    safeBlockVertical = (screenHeight! / 100 - _safeAreaVertical! / 100);
  }

  static double? getFullWidth() {
    return screenWidth;
  }

  static double? getFullHeight() {
    return screenHeight;
  }

  static double calculateTextSize(int fontSize) {
    return safeBlockHorizontal! * (fontSize * 6.6) / 27;
  }

  static double calculateBlockVertical(double blockSize) {
    var size = (blockSize / 896) * screenHeight!;
    Get.log("mediaSize: $screenHeight, $screenWidth, size: $size");
    return size;
  }

  static double calculateBlockHorizontal(double blockSize) {
    var size = (blockSize / 414) * screenWidth!;

    return size;
  }
}

class ResponsivLayout extends StatelessWidget {
  final Widget mobilScaffold;
  final Widget tableScaffold;
  final Widget desctopScaffold;

  const ResponsivLayout(
      {super.key,
      required this.mobilScaffold,
      required this.tableScaffold,
      required this.desctopScaffold});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 500) {
          return mobilScaffold;
        } else if (constraints.maxWidth < 1100) {
          return tableScaffold;
        } else {
          return desctopScaffold;
        }
      },
    );
  }
}
