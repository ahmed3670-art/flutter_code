import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:products_application/constants/config_size.dart';
import 'package:products_application/constants/value_manager.dart';
import 'package:products_application/presentation/styles/colors.dart';
import 'package:products_application/presentation/styles/decoration.dart';

class CustomBox extends StatelessWidget {
  final void Function(String)? change;
  const CustomBox({required this.change, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ConfigSize.defaultSize! * AppSize.s8,
      width: ConfigSize.defaultSize! * AppSize.s8,
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s20)),
        boxShadow: boxShadow(),
      ),
      padding: const EdgeInsets.symmetric(vertical: AppPading.p10),
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return "";
          }
        },
        onChanged: change,
        style: Theme.of(context).textTheme.displayLarge,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(AppSize.s20),
                borderSide: BorderSide(color: AppColor.white)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(AppSize.s20),
                borderSide: BorderSide(color: AppColor.white))),
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
      ),
    );
  }
}
