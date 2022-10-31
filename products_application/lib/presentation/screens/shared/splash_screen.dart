import 'dart:async';

import 'package:flutter/material.dart';
import 'package:products_application/constants/Config_Size.dart';
import 'package:products_application/constants/appconst.dart';
import 'package:products_application/constants/asset_manager.dart';
import 'package:products_application/constants/value_manager.dart';
import 'package:products_application/presentation/router/app_router.dart';
import 'package:products_application/presentation/styles/colors.dart';
import 'package:products_application/presentation/widget/image_assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer timer;
  @override
  void initState() {
    super.initState();
    timer = Timer(const Duration(seconds: Appconst.splashDelay), _start);
  }

  @override
  Widget build(BuildContext context) {
    ConfigSize().init(context);
    return Scaffold(
        backgroundColor: AppColor.blue,
        body: Stack(
          children: [
            Positioned(
              top: ConfigSize.defaultSize! * AppSize.s10,
              child: image(ImageAssets.upRec_splash),
            ),
            Positioned(
                bottom: ConfigSize.defaultSize! * AppSize.s10,
                right: ConfigSize.defaultSize! * AppSize.s0,
                child: image(ImageAssets.downRec_splash)),
            Center(
                child: Padding(
              padding: EdgeInsets.all(ConfigSize.defaultSize! * AppPading.p10),
              child: image(ImageAssets.splashlogo),
            )),
          ],
        ));
  }

  void _start() {
    Navigator.pushReplacementNamed(context, AppRouter.loginRoute);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    timer.cancel();
    super.dispose();
  }
}
