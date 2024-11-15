import 'package:flutter/material.dart';
import 'package:testapp/pages/activities_page.dart';
import 'package:testapp/pages/glavnaya_page.dart';
import 'package:testapp/pages/health_page.dart';
import 'package:testapp/pages/products_page.dart';
import 'package:testapp/pages/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 4;

  List<Widget> pages = <Widget>[
    ActivitiesPage(),
    ProductsPage(),
    HealthPage(),
    ProfilePage(),
    MainPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xF8F8FCFF),
        body: IndexedStack(
          index: _selectedIndex,
          children: pages,
        ),
        bottomNavigationBar: BottomAppBar(
          height: 92,
          shape: const CircularNotchedRectangle(), // Notch for floating button
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.run_circle_outlined,
                        color: _selectedIndex == 0
                            ? Color(0xFF5B91F4)
                            : Colors.grey),
                    onPressed: () => _onItemTapped(0),
                  ),
                  Text(
                    'Активность',
                    style: TextStyle(
                      color: _selectedIndex == 0
                          ? Color(0xFF5B91F4)
                          : Colors.grey, // Active text color
                    ),
                  ), // Text under the icon
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.local_grocery_store,
                        color: _selectedIndex == 1
                            ? Color(0xFF5B91F4)
                            : Colors.grey),
                    onPressed: () => _onItemTapped(1),
                  ),
                  Text(
                    'Продукты',
                    style: TextStyle(
                      color: _selectedIndex == 1
                          ? Color(0xFF5B91F4)
                          : Colors.grey, // Active text color
                    ),
                  ), // Text under the icon
                ],
              ),
              SizedBox(width: 48), // Space for the floating action button
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.favorite,
                        color: _selectedIndex == 2
                            ? Color(0xFF5B91F4)
                            : Colors.grey),
                    onPressed: () => _onItemTapped(2),
                  ),
                  Text(
                    'Анализы',
                    style: TextStyle(
                      color: _selectedIndex == 2
                          ? Color(0xFF5B91F4)
                          : Colors.grey, // Active text color
                    ),
                  ), // Text under the icon
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.person_outlined,
                        color: _selectedIndex == 3
                            ? Color(0xFF5B91F4)
                            : Colors.grey),
                    onPressed: () => _onItemTapped(3),
                  ),
                  Text(
                    'Профиль',
                    style: TextStyle(
                      color: _selectedIndex == 3
                          ? Color(0xFF5B91F4)
                          : Colors.grey, // Active text color
                    ),
                  ), // Text under the icon
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => _onItemTapped(4),
          child: _selectedIndex == 4
              ? Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF5B91F4),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 4,
                            color: Color(0xFF5B91F4),
                            offset: Offset(0, 0),
                            spreadRadius: 2)
                      ]),
                  child: Icon(
                    Icons.home,
                    color: Colors.white,
                    size: 32,
                  ),
                )
              : Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF5B91F4).withOpacity(0.8),
                  ),
                  child: Icon(
                    Icons.home,
                    color: Colors.white,
                    size: 32,
                  )),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          // backgroundColor:  Color(0xFF5B91F4),
        ),
        // backgroundColor: Colors.transparent,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
