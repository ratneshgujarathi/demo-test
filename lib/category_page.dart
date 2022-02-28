import 'package:demo_test/category_page.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'constants/constants.dart';

import 'home_page.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final _pageOptions = [
    HomeScreen(),
    CategoryScreen(),
    // CurateScreen(),
    // SaleScreen(),
    // MoreScreen(),
  ];
  final String _fabricImageL =
      'https://img1.exportersindia.com/product_images/bc-full/dir_63/1871703/silk-fabric-1374275.jpg';

  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.lightGreen,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'Category',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.design_services),
              label: 'Curate',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: 'Sale',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              label: 'More',
            ),
          ],
        ),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.grey,
          actions: <Widget>[
            const Icon(Icons.search_outlined),
            const SizedBox(
              width: 20,
            ),
            Badge(
              child: const Icon(Icons.shopping_bag_outlined),
              badgeContent: const Text('1'),
              position: const BadgePosition(top: 0, end: -10),
              badgeColor: Colors.grey,
            ),
            const SizedBox(
              width: 20,
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Card(
              color: Colors.amber[100],
              child: Container(
                height: Size.size.height * 0.15,
                width: Size.size.width,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      right: 0,
                      child: Image(
                        image: NetworkImage(_fabricImageL),
                      ),
                    ),
                    Positioned(
                      child: Container(
                        width: Size.size.width * 0.6,
                        decoration: BoxDecoration(
                          color: Colors.amber[100],
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            ), //BoxShadow
                             //BoxShadow
                          ],
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(60),
                              bottomRight: Radius.circular(60)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.lightBlueAccent[100],
              child: Container(
                height: Size.size.height * 0.15,
              ),
            ),
            Card(
              color: Colors.brown[100],
              child: Container(
                height: Size.size.height * 0.15,
              ),
            ),
            Card(
              color: Colors.brown[50],
              child: Container(
                height: Size.size.height * 0.15,
              ),
            ),
            Card(
              color: Colors.brown[100],
              child: Container(
                height: Size.size.height * 0.15,
              ),
            ),
            Card(
              color: Colors.green[100],
              child: Container(
                height: Size.size.height * 0.15,
              ),
            ),
            Card(
              color: Colors.lightGreen[200],
              child: Container(
                height: Size.size.height * 0.15,
              ),
            ),
          ],
        )),
      ),
    );
  }
}
