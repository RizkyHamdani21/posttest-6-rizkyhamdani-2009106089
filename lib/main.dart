// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, non_constant_identifier_names
// @dart=2.9
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:posttest6_2009106089_rizkyhamdani/nav.dart';
import 'package:posttest6_2009106089_rizkyhamdani/navigationBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Nav(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MyTix',
        home: SplashScreen(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var Height = MediaQuery.of(context).size.height;
    var Width = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/image/landingPage.png'),
              fit: BoxFit.cover)),
      alignment: Alignment.bottomRight,
      child: Container(
        margin: EdgeInsets.all(30),
        child: ElevatedButton(
          child: const Text('Start'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const NavigationBarPage()),
            );
          },
        ),
      ),
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
        backgroundColor: Colors.amber,
        splash: "assets/image/splashScreen.png",
        duration: 3000,
        splashTransition: SplashTransition.fadeTransition,
        nextScreen: HomePage(),
      ),
    );
  }
}
