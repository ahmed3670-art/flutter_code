import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:products_application/business_logic/bloc/global_bloc.dart';

import 'package:products_application/constants/config_size.dart';

import 'package:products_application/constants/string_manager.dart';
import 'package:products_application/constants/value_manager.dart';
import 'package:products_application/data/data_providers/remote/dio_helper.dart';

import 'package:products_application/presentation/styles/colors.dart';
import 'package:products_application/presentation/styles/decoration.dart';
import 'package:products_application/presentation/widget/button.dart';

class helpScreen extends StatelessWidget {
  const helpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ConfigSize().init(context);
    return BlocProvider(
      create: (context) => GlobalBloc(
        DioHelper(),
      )..add(GetHelpDataEvent()),
      child: Scaffold(
        body: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            Container(
              width: ConfigSize.screenWidth,
              height: ConfigSize.screenHeight,
              decoration: BoxDecoration(gradient: background()),
            ),
            Padding(
                padding: EdgeInsets.only(
                    top: ConfigSize.defaultSize! * AppPading.p5),
                child: Text(
                  AppString.helptitle,
                  style: TextStyle(fontSize: 30, color: AppColor.white),
                )),
            BlocBuilder<GlobalBloc, GlobalState>(
              builder: (context, state) {
                final List data = state.helpdata;
                return Padding(
                  padding: EdgeInsets.only(
                      top: ConfigSize.defaultSize! * AppPading.p8),
                  child: ListView.builder(
                      itemCount: state.helpdata.length,
                      itemBuilder: ((context, index) {
                        return Padding(
                          padding: EdgeInsets.all(AppPading.p12),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(AppSize.s8),
                            ),
                            child: ExpansionTile(
                              expandedAlignment: Alignment.centerLeft,
                              title: Text(
                                "${state.helpdata[index].question}",
                                style: TextStyle(color: AppColor.blue),
                              ),
                              children: [
                                Padding(
                                    padding: EdgeInsets.all(AppPading.p14),
                                    child:
                                        Text("${state.helpdata[index].answer}"))
                              ],
                            ),
                          ),
                        );
                      })),
                );
              },
            ),
            Padding(
              padding: EdgeInsets.only(top: ConfigSize.screenHeight! / 1.1),
              child: Container(
                  width: ConfigSize.screenWidth! / 1.5,
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
                  child: customButton(AppString.helpbutton, ontap())),
            )
          ],
        ),
      ),
    );
  }

  void ontap() {}
}
