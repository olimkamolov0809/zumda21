import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zumda/features/current/presentation/pages/current_page.dart';
import 'package:zumda/features/history/presentation/pages/history_page.dart';
import 'package:zumda/features/order/presentation/pages/order_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController? _pageController;
  int _currentTap = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.width;
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: const [
          OrderPage(),
          CurrentPage(),
          HistoryPage(),
        ],
        onPageChanged: (int index) {
          setState(() {
            _currentTap = index;
          });
        },
      ),
      bottomNavigationBar: CupertinoTabBar(
        onTap: (int index) {
          setState(() {
            _currentTap = index;
            _pageController!.animateToPage(index,
                duration: const Duration(microseconds: 200),
                curve: Curves.easeIn);
          });
        },
        currentIndex: _currentTap,
        activeColor: const Color.fromRGBO(240, 200, 213, 1),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.restaurant_menu_outlined,
              size: 30,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined,
                size: 30, color: Colors.black),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.history_outlined,
              size: 30,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
