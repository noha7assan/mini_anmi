import 'package:flutter/material.dart';
import 'package:mini_app/details_screen.dart';
import 'package:mini_app/screens/homeScreen/home.dart';
import 'package:mini_app/upgrade_plan.dart';

class Pages extends StatefulWidget {
  const Pages({super.key});

  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [Home(), UpgradePlan(), DetailsScreen()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // ← هنا بنعرض الصفحة المختارة
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Colors.transparent,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MaterialButton(
              onPressed: () => _onItemTapped(0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.home,
                    color: _selectedIndex == 0 ? Colors.purple : Colors.grey,
                  ),
                  Text(
                    'Home',
                    style: TextStyle(
                      color: _selectedIndex == 0 ? Colors.purple : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () => _onItemTapped(1),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.person,
                    color: _selectedIndex == 1 ? Colors.purple : Colors.grey,
                  ),
                  Text(
                    'Upgrade Plan',
                    style: TextStyle(
                      color: _selectedIndex == 1 ? Colors.purple : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () => _onItemTapped(2),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.info,
                    color: _selectedIndex == 2 ? Colors.purple : Colors.grey,
                  ),
                  Text(
                    'Details',
                    style: TextStyle(
                      color: _selectedIndex == 2 ? Colors.purple : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
