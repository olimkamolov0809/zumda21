import 'package:get/get.dart';
import 'package:zumda/app/app_routes.dart';
import 'package:zumda/features/current/presentation/pages/current_page.dart';
import 'package:zumda/features/history/presentation/pages/history_page.dart';
import 'package:zumda/features/home/presentation/pages/home_page.dart';
import 'package:zumda/features/login/presentation/pages/sigin_page.dart';
import 'package:zumda/features/order/presentation/pages/order_page.dart';
import 'package:zumda/features/ready-product/presentation/pages/ready_order.dart';
import 'package:zumda/features/splash/pages/splash_page.dart';
import 'package:zumda/features/user/presentation/pages/user_page.dart';

class AppPages {
  static final getPages = [
    GetPage(name: AppRoutes.SPLASH, page: () => const SplashPage()),
    GetPage(name: AppRoutes.HOME, page: () => const HomePage()),
    GetPage(name: AppRoutes.SINGIN, page: () => const SigInPage()),
    GetPage(name: AppRoutes.USER, page: () => const UserPage()),
    GetPage(name: AppRoutes.ORDER, page: () => const OrderPage()),
    GetPage(name: AppRoutes.CURRENT, page: () => const CurrentPage()),
    GetPage(name: AppRoutes.HISTORY, page: () => const HistoryPage()),
    GetPage(name: AppRoutes.READY_ORDER, page: () => const ReadyOrder()),
  ];
}
