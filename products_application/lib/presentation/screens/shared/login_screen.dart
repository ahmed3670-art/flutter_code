import 'package:flutter/material.dart';
import 'package:products_application/constants/asset_manager.dart';
import 'package:products_application/constants/config_size.dart';
import 'package:products_application/constants/value_manager.dart';
import 'package:products_application/presentation/styles/colors.dart';
import 'package:products_application/presentation/styles/curve.dart';
import 'package:products_application/presentation/view/login_card.dart';
import 'package:products_application/presentation/widget/icon.dart';
import 'package:products_application/presentation/widget/image_assets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    ConfigSize().init(context);
    return Scaffold(
        backgroundColor: AppColor.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                ClipPath(
                  clipper: curvecliper(),
                  child: Material(child: image(ImageAssets.loginBackground)),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: ConfigSize.defaultSize! * AppPading.p16),
                  child: const Center(
                    child: loginCard(),
                  ),
                )
              ]),
              Padding(
                padding: EdgeInsets.only(
                  top: ConfigSize.defaultSize! * AppSize.s7,
                  left: ConfigSize.defaultSize! * AppSize.s4,
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: AppMargine.m14),
                      width: AppSize.s143,
                      height: AppSize.s1,
                      color: AppColor.blue,
                    ),
                    SizedBox(
                      width: AppSize.s10,
                    ),
                    Text(
                      "OR",
                      style: TextStyle(color: AppColor.blue),
                    ),
                    SizedBox(
                      width: AppSize.s10,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      width: AppSize.s143,
                      height: AppSize.s1,
                      color: AppColor.blue,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(70),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      icon(ImageAssets.facebooklogo),
                      icon(ImageAssets.ioslogo),
                      icon(ImageAssets.googlelogo),
                    ]),
              )
            ],
          ),
        ));
  }
}
