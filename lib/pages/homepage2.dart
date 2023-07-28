import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zumda/pages/%D0%98%D1%81%D1%82%D0%BE%D1%80%D0%B8%D1%8F_page.dart';
import 'package:zumda/pages/%D0%9D%D0%BE%D0%B2%D1%8B%D0%B5_page.dart';
import 'package:zumda/pages/%D0%A2%D0%B5%D0%BA%D1%83%D1%89%D0%B8%D0%B5_page.dart';
class HomePage2 extends StatefulWidget {
  static final String id = 'homepage2';
  const HomePage2({Key? key}) : super(key: key);

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  PageController? _pageController;
  int _currentTap = 0;

  //get badges => null;

  //get badges => null;

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
        children: [
          NovePage(),
          HozergiPage(),
          IstoriyaPage(),
        ],
        onPageChanged: (int index){
          setState(() {
            _currentTap = index;
          });
        },
      ),
      bottomNavigationBar: CupertinoTabBar(
        onTap: (int index){
          setState(() {
            _currentTap = index;
            _pageController!.animateToPage(index, duration: Duration(microseconds: 200), curve: Curves.easeIn);
          });
        },
        currentIndex: _currentTap,
        activeColor: Color.fromRGBO(240 , 200, 213, 1),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant_menu_outlined,size: 30,color: Colors.black,),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined,size: 30,color: Colors.black),

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history_outlined,size: 30,color: Colors.black,),
          ),
        ],
      ),
    );
  }
}
