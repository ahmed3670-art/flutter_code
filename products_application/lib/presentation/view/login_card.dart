import 'package:flutter/material.dart';
import 'package:products_application/constants/config_size.dart';
import 'package:products_application/constants/onpreesdbutton.dart';
import 'package:products_application/constants/string_manager.dart';
import 'package:products_application/constants/value_manager.dart';
import 'package:products_application/data/data_providers/remote/dio_helper.dart';
import 'package:products_application/data/entites/login.dart';
import 'package:products_application/presentation/router/app_router.dart';
import 'package:products_application/presentation/styles/decoration.dart';
import 'package:products_application/presentation/styles/colors.dart';
import 'package:products_application/presentation/widget/button.dart';
import 'package:products_application/presentation/widget/text_field.dart';

class loginCard extends StatelessWidget {
  const loginCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController1 = TextEditingController();
    TextEditingController textEditingController2 = TextEditingController();
    ConfigSize().init;
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.s40),
          color: AppColor.white,
          boxShadow: boxShadow()),
      margin: EdgeInsets.all(ConfigSize.defaultSize! * AppSize.s3),
      width: ConfigSize.screenWidth,
      height: ConfigSize.defaultSize! * AppSize.s37,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: AppPading.p30),
            child: Text(
              AppString.loginTitle,
              style: TextStyle(fontSize: AppSize.s25),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: AppSize.s20),
            width: AppSize.s143,
            height: AppSize.s3,
            color: AppColor.blue,
          ),
          Padding(
              padding: EdgeInsets.all(AppPading.p30),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(boxShadow: boxShadow()),
                    child: textField(
                        AppString.login_hint1, textEditingController1),
                  ),
                  SizedBox(
                    height: AppSize.s18,
                  ),
                  Container(
                      decoration: BoxDecoration(boxShadow: boxShadow()),
                      child: textField(
                          AppString.login_hint2, textEditingController2)),
                  SizedBox(
                    height: AppSize.s25,
                  ),
                  Container(
                    width: ConfigSize.screenWidth,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            AppColor.blue.withOpacity(1),
                            AppColor.blue.withOpacity(.75),
                            AppColor.blue.withOpacity(.50),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(AppSize.s20)),
                    //to do on presed on call
                    child: MaterialButton(
                      onPressed: () {
                        onpressed().onpressedlogin(textEditingController1.text,
                            textEditingController2.text, context);
                      },
                      child: Text(
                        AppString.login_button,
                        style: const TextStyle(
                            color: AppColor.white,
                            fontSize: AppSize.s20,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
