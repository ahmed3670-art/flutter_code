import 'package:flutter/cupertino.dart';
import 'package:products_application/constants/Config_Size.dart';
import 'package:products_application/constants/value_manager.dart';
import 'package:products_application/presentation/styles/colors.dart';
import 'package:products_application/presentation/styles/decoration.dart';

class viewStore extends StatelessWidget {
  String company;
  viewStore({required this.company, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ConfigSize.screenWidth! - AppSize.s60,
      height: ConfigSize.defaultSize! * 7,
      decoration: BoxDecoration(
          color: AppColor.white,
          boxShadow: boxShadow(),
          borderRadius: BorderRadius.circular(AppSize.s20)),
      child: Row(children: [
        Container(
          margin: EdgeInsets.only(left: AppMargine.m8),
          width: ConfigSize.screenWidth! / AppSize.s7,
          height: ConfigSize.screenHeight! / AppSize.s15,
          decoration: BoxDecoration(
              color: AppColor.lightGray,
              boxShadow: boxShadow(),
              borderRadius: BorderRadius.circular(AppSize.s20)),
          child: Center(child: Text(company)),
        ),
        Padding(
          padding: EdgeInsets.only(left: 15, top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${company} official store",
                style: TextStyle(fontSize: 17, color: AppColor.black),
              ),
              Text(
                "View Store",
                style: TextStyle(fontSize: 12, color: AppColor.Gray),
              ),
            ],
          ),
        ),
        Container(
            margin: EdgeInsets.only(left: 60),
            width: ConfigSize.screenWidth! / AppSize.s14,
            height: ConfigSize.screenHeight! / AppSize.s30,
            decoration: BoxDecoration(
                color: AppColor.lightGray,
                boxShadow: boxShadow(),
                borderRadius: BorderRadius.circular(3)),
            child: Center(
                child: Text(">",
                    style: TextStyle(fontSize: 17, color: AppColor.blue)))),
      ]),
    );
  }
}
