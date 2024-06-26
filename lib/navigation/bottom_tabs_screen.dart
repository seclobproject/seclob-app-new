import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '../screens/account_page/accountpage.dart';
import '../screens/free_listing_page/freelisting.dart';
import '../screens/home_page/home_page.dart';
import '../screens/invite_page/invitepage.dart';
import 'app_drawer.dart';

class BottomTabsScreen extends StatefulWidget {
  const BottomTabsScreen({Key? key}) : super(key: key);

  @override
  State<BottomTabsScreen> createState() => _BottomTabsScreenState();
}

class _BottomTabsScreenState extends State<BottomTabsScreen> {
  int _selectedPageIndex = 0;

  void callback(){
    print("callback");
  }

  final List<Map<String, Object>> _pages = [
    {'page': home(), 'title': 'Home'},
    // {'page': category_page(), 'title': 'CATEGORY'},
    {'page': invitepage(), 'title': 'INVITE'},
    {'page': freelisting(), 'title': 'FREELISTING'},
    {'page': account(), 'title': 'ACCOUNT'},
  ];
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  Map<String, Object> get currentPage {
    return _pages[_selectedPageIndex];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: appdrawer(),
      // appBar: AppBarStyle1(title: currentPage['title'] as String),

      body: currentPage['page'] as Widget,
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),), // Adjust the radius as needed
        child: BottomNavigationBar(
          onTap: _selectPage,
          currentIndex: _selectedPageIndex,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/svg/homeicon.svg",
                color: (_selectedPageIndex == 0)
                    ? Theme.of(context).colorScheme.primary
                    : null,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/svg/inviteicon.svg",
                color: (_selectedPageIndex == 1)
                    ? Theme.of(context).colorScheme.primary
                    : null,
              ),
              label: 'Invite & Earn',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/svg/freelisting.svg",
                color: (_selectedPageIndex == 2)
                    ? Theme.of(context).colorScheme.primary
                    : null,
              ),
              label: 'Free Listing',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/svg/profileicon.svg",
                color: (_selectedPageIndex == 3)
                    ? Theme.of(context).colorScheme.primary
                    : null,
              ),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}

