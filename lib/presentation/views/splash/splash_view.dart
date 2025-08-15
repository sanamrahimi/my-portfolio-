import 'dart:async';
import 'package:flutter/material.dart';
import '../../../core/utils/app_colors.dart';
import '../home_view.dart';
import 'componenets/animated_loading_text.dart';
import 'componenets/animated_texts_componenets.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeView(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkColor,
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedImageContainer(
              width: 250,
              height: 250,
            ),
            SizedBox(
              height: 20,
            ),
            AnimatedLoadingText(),
          ],
        ),
      ),
    );
  }
}
