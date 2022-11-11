import 'package:flutter/material.dart';
import 'package:rolodex/screens/dashboard/explorescreen.dart';
import 'package:rolodex/screens/dashboard/home/homescreen.dart';
import 'package:rolodex/screens/dashboard/myaccount.dart';
import 'package:rolodex/screens/dashboard/searchscreen.dart';
import 'package:rolodex/screens/dashboard/settings.dart';
import 'package:rolodex/widget/getText.dart';

import '../utils/constants.dart';
import 'dashboard/home/homescreen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  var screensView = [
    const HomeScreen(),
    const ExploreScreen(),
    const SearchScreen(),
    const SettingsScreen(),
    const MyAccount()
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: screensView[selectedIndex],
        bottomNavigationBar: buildBottomBar()
    );
  }

  Widget buildBottomBar(){
    return Container(
      padding: const EdgeInsets.only(left: 22, right: 24),
      height: 79,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          bottomUI('assets/images/bottombar_home.png',
              selectedIndex == 0 ? Color(0xff00AAE4) : kLightTextColor, 0, () {
                setState(() {
                  selectedIndex = 0;
                });
              }),
          bottomUI('assets/images/bottombar_chat.png',
              selectedIndex == 1 ? Color(0xff00AAE4) : kLightTextColor,1, () {
                setState(() {
                  selectedIndex = 1;
                });
              }),
          bottomUI('assets/images/search.png',
              selectedIndex == 2 ? Color(0xff00AAE4) : kLightTextColor,2, () {
                setState(() {
                  selectedIndex = 2;
                });
              }),
          bottomUI('assets/images/bottombar_setting.png',
              selectedIndex == 3 ? Color(0xff00AAE4) : kLightTextColor,3, () {
                setState(() {
                  selectedIndex = 3;
                });
              }),
          bottomUI('assets/images/bottombar_user.png',
              selectedIndex == 4 ? Color(0xff00AAE4) : kLightTextColor,4 ,() {
                setState(() {
                  selectedIndex = 4;
                });
              }),
        ],
      ),
    );
  }
  Widget bottomUI(String img,  Color color, index, Function() onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width:45,height:46,
        decoration: BoxDecoration(
          color:selectedIndex== index?const Color(0xff00AAE4):const Color(0xffffffff),
          borderRadius: BorderRadius.circular(14)
        ),
        child: Image.asset(
              img,
              height: 25,
              width: 25,
              color: selectedIndex== index?Colors.white:color,
            ),
      ),
      
        
    );
  }
}
