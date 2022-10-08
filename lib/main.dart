import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';
import 'package:waves/pages/bottle_page.dart';
import 'package:waves/pages/home_page.dart';
import 'package:waves/pages/settings_page.dart';
import 'package:waves/pages/social_page.dart';
import 'package:waves/pages/statistics_page.dart';

void main() => runApp(MaterialApp(home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int pageIndex = 4;

  //creat all the pages
  final HomePage _homePage = HomePage();
  final StatsPage _statsPage = StatsPage();
  final SocialsPage _socialsPage = SocialsPage();
  final BottlePage _bottlePage = BottlePage();
  final SettingsPage _settingsPage = SettingsPage();

  Widget _showpage = new HomePage();

  Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        return _homePage;
        break;
      case 1:
        return _statsPage;
        break;
      case 2:
        return _socialsPage;
        break;
      case 3:
        return _bottlePage;
        break;
      case 4:
        return _settingsPage;
        break;
      default:
        return _homePage;
        break;
    }
  }

  //
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.black,
        extendBody: true,
        bottomNavigationBar: CurvedNavigationBar(
          index: pageIndex,
          height: 60.0,
          backgroundColor: Colors.transparent,
          // buttonBackgroundColor: Color(0xFF072AA3),
          // buttonBackgroundColor: Colors.black,
          color: Colors.black,
          animationCurve: Curves.ease,
          animationDuration: Duration(milliseconds: 600),
          items: <Widget>[
            Image(
              image: AssetImage("assets/images/drop_icon.png"),
              height: 35,
              width: 35,
            ),
            Image(
              image: AssetImage("assets/images/analytics_icon.png"),
              height: 35,
              width: 35,
            ),
            Image(
              image: AssetImage("assets/images/social_icon.png"),
              height: 35,
              width: 35,
            ),
            Image(
              image: AssetImage("assets/images/bottle_icon.png"),
              height: 35,
              width: 35,
            ),
            Image(
              image: AssetImage("assets/images/setting_icon.png"),
              height: 35,
              width: 35,
            ),
          ],

          onTap: (index) {
            setState(() {
              this.pageIndex = index;
              _showpage = _pageChooser(index);
            });
          },

          letIndexChange: (index) => true,
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color(0xFFAEFFFA), Color(0xFF00C2FD)],
          )),
          // color: Colors.transparent,
          child: Center(
            child:   _showpage = _pageChooser(pageIndex)
            ,
          ),
        ));
  }
}
