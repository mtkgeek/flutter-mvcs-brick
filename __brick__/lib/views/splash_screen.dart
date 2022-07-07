import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'dart:async';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:{{name}}/controllers/controllers.dart';
import 'package:{{name}}/views/views.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //final AuthController authController = Get.find();

  @override
  void initState() {
    super.initState();

    // WidgetsBinding.instance!.addPostFrameCallback((_) async {
    //   Timer(Duration(milliseconds: 500), () => Get.toNamed('/base'));
    // });
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Theme.of(context).colorScheme.primary,
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.primary,
          body: Container(),
        ),
      ),
    );
  }
}
