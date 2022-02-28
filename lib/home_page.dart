import 'package:demo_test/category_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _pageOptions = [
    HomeScreen(),
    CategoryScreen(),
    // CurateScreen(),
    // SaleScreen(),
    // MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
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
              Row(
                children: [
                  Card(
                    child: SizedBox(
                      child: Column(
                        children: [
                          Container(
                            child: Image(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'http://placeimg.com/620/420/fabric'),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Text('Fabrics'),
                          )
                        ],
                      ),
                      height: Size.size.height * 0.15,
                      width: Size.size.width * 0.5,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
