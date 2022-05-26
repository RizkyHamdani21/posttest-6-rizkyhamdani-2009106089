// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:posttest6_2009106089_rizkyhamdani/expenses.dart';
import 'package:posttest6_2009106089_rizkyhamdani/home.dart';
import 'package:posttest6_2009106089_rizkyhamdani/nav.dart';
import 'package:posttest6_2009106089_rizkyhamdani/profile.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavigationBarPage extends StatefulWidget {
  const NavigationBarPage({Key? key}) : super(key: key);

  @override
  State<NavigationBarPage> createState() => _NavigationBarPageState();
}

class _NavigationBarPageState extends State<NavigationBarPage> {
  final tabs = [Expenses(), Home(), Profile()];

  final items = [
    BottomNavigationBarItem(icon: Icon(Icons.money)),
    BottomNavigationBarItem(icon: Icon(Icons.home)),
    BottomNavigationBarItem(icon: Icon(Icons.person)),
  ];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Nav, int>(
      builder: (context, state) {
        return Scaffold(
          body: _buildBody(state),
          bottomNavigationBar: _buildBottomNav(),
        );
      },
    );
  }

  Widget _buildBottomNav() {
    return BottomNavigationBar(
      backgroundColor: Color.fromARGB(255, 240, 242, 202),
      currentIndex: context.read<Nav>().state,
      type: BottomNavigationBarType.fixed,
      onTap: _getChangeBottomNav,
      // ignore: prefer_const_literals_to_create_immutables
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.money), label: 'Expenses'),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
      ],
    );
  }

  Widget _buildBody(int index) {
    return tabs.elementAt(index);
  }

  void _getChangeBottomNav(int index) {
    context.read<Nav>().updateIndex(index);
  }
}
