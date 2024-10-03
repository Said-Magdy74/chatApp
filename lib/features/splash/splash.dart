import 'dart:async';


import 'package:flutter/material.dart';
import 'package:untitled4/core/const/asset_images/asset_images.dart';
import 'package:untitled4/features/home/presentation/view/home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const Home())));
    return  Scaffold(
        body: Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: Center(
            child: Image.asset(AssetsImages.logo),
          ),
        ), //<- place where the image appears

    );
  }
}
