import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:products_application/constants/asset_manager.dart';
import 'package:products_application/constants/config_size.dart';
import 'package:products_application/constants/value_manager.dart';
import 'package:products_application/data/entites/products.dart';
import 'package:products_application/presentation/screens/user/details_screen.dart';
import 'package:products_application/presentation/styles/colors.dart';
import 'package:products_application/presentation/styles/decoration.dart';
import 'package:products_application/presentation/widget/image_assets.dart';

Widget ProductCard(String name, String company, String price, String imagePath,
    Products products, BuildContext con) {
  return GestureDetector(
    onTap: () {
      Navigator.push(con, MaterialPageRoute(builder: (context) {
        return DetailsScreen(products: products);
      }));
    },
    child: Container(
      margin: EdgeInsets.only(left: AppMargine.m20, right: AppMargine.m20),
      decoration: BoxDecoration(
          color: AppColor.white,
          boxShadow: boxShadow(),
          borderRadius: BorderRadius.circular(AppSize.s20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: ConfigSize.screenHeight! / 7,
            width: 200,
            decoration: BoxDecoration(
                color: AppColor.white,
                boxShadow: boxShadow(),
                borderRadius: BorderRadius.circular(AppSize.s20)),
            padding: EdgeInsets.all(AppSize.s10),
            child: Image.network(imagePath),
          ),
          SizedBox(
            height: AppSize.s10,
          ),
          Padding(
              padding: EdgeInsets.only(left: AppPading.p5),
              child: Text(company, style: TextStyle(color: AppColor.blue))),
          Padding(
              padding: EdgeInsets.only(left: 5),
              child: Text(
                name,
                style: TextStyle(fontSize: 12),
              )),
          Padding(
            padding: EdgeInsets.only(left: 5),
            child: Text(
              "${price} EGP",
              style: TextStyle(fontSize: 10),
            ),
          )
        ],
      ),
    ),
  );
}
