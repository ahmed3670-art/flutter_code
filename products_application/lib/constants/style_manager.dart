import 'package:flutter/material.dart';
import 'package:products_application/constants/value_manager.dart';
import 'package:products_application/presentation/styles/colors.dart';

ThemeData getAppTheme() {
  return ThemeData(
    //main colors
    // primaryColor: ColorManager.primary,
    // primaryColorLight: ColorManager.lightprimary,
    // primaryColorDark: ColorManager.darkprimary,
    // disabledColor: ColorManager.grey1,
    // splashColor: ColorManager.lightprimary,
    //cardtheme
    cardTheme: CardTheme(
      color: AppColor.white,
      shadowColor: AppColor.Gray,
      elevation: AppSize.s4,
    ),
    //appbartheme
    appBarTheme: AppBarTheme(
      color: AppColor.primary,
      shadowColor: AppColor.lightprimary,
      elevation: AppSize.s4,
      centerTitle: true,
      // titleTextStyle: getRegularStyle(ColorManager.white, FontSize.s16)
    ),

//elvatedbutton theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        // textStyle: getRegularStyle(ColorManager.white, FontSize.s16),
        primary: AppColor.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
      ),
    ),
//text theme
    // textTheme: TextTheme(
    //   displayLarge: getlightStyle(ColorManager.white, FontSize.s22),
    //   headlineLarge: getsemiboldStyle(ColorManager.DarkGray, FontSize.s16),
    //   titleMedium: getmediumStyle(ColorManager.LightGray, FontSize.s14),
    //   bodyLarge: getRegularStyle(ColorManager.grey1, FontSize.s12),
    //   bodySmall: getRegularStyle(ColorManager.Gray, FontSize.s12),
    // ),
    // inputDecorationTheme: InputDecorationTheme(
    //   contentPadding: EdgeInsets.all(AppPading.p8),
    //   hintStyle: getRegularStyle(ColorManager.Gray, FontSize.s14),
    //   labelStyle: getmediumStyle(ColorManager.Gray, FontSize.s14),
    //   errorStyle: getRegularStyle(ColorManager.erorr, FontSize.s14),
    //   enabledBorder: OutlineInputBorder(
    //       borderSide:
    //           BorderSide(width: AppSize.s1_5, color: ColorManager.primary),
    //       borderRadius: BorderRadius.all(
    //         Radius.circular(AppSize.s8),
    //       )),
    // focusedBorder: OutlineInputBorder(
    //     borderSide: BorderSide(width: AppSize.s1_5, color: ColorManager.Gray),
    //     borderRadius: const BorderRadius.all(
    //       Radius.circular(AppSize.s8),
    //     )),
    // errorBorder: OutlineInputBorder(
    //     borderSide:
    //         BorderSide(width: AppSize.s1_5, color: ColorManager.erorr),
    //     borderRadius: const BorderRadius.all(
    //       Radius.circular(AppSize.s8),
    //     )),
    // focusedErrorBorder: OutlineInputBorder(
    //     borderSide:
    //         BorderSide(width: AppSize.s1_5, color: ColorManager.primary),
    //     borderRadius: const BorderRadius.all(
    //       Radius.circular(AppSize.s8),
    //     )),
  );
}
