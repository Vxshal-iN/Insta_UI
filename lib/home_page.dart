// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:nft_ui/account.dart';
import 'package:nft_ui/pages/home.dart';
import 'package:nft_ui/pages/reels.dart';
import 'package:nft_ui/pages/search.dart';
import 'package:nft_ui/pages/shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //nevigate button bar
  int _selectedIndex = 0;
  void _navigateBottonNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //different pages text
  final List<Widget> _children = [
    UserHome(),
    UserSearch(),
    UserReels(),
    UserShop(),
    UserAccount(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottonNavBar,
          type: BottomNavigationBarType.fixed,
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'home',
                backgroundColor: Colors.amber),
            const BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'search',
            ),
            const BottomNavigationBarItem(
                icon: Icon(Icons.video_call), label: 'reels'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.shop), label: 'shop'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.person), label: 'account'),
          ]),
    );
  }
}
