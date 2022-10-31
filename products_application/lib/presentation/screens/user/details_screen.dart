import 'package:flutter/material.dart';
import 'package:products_application/constants/asset_manager.dart';
import 'package:products_application/constants/config_size.dart';
import 'package:products_application/constants/string_manager.dart';
import 'package:products_application/constants/value_manager.dart';
import 'package:products_application/data/entites/products.dart';
import 'package:products_application/presentation/router/app_router.dart';
import 'package:products_application/presentation/styles/colors.dart';
import 'package:products_application/presentation/styles/decoration.dart';
import 'package:products_application/presentation/styles/textstyle.dart';
import 'package:products_application/presentation/view/box_view.dart';
import 'package:products_application/presentation/view/vector_button.dart';
import 'package:products_application/presentation/view/view_store_box.dart';
import 'package:products_application/presentation/widget/button.dart';
import 'package:products_application/presentation/widget/screens_background.dart';
import 'package:products_application/presentation/widget/sizebox.dart';

class DetailsScreen extends StatefulWidget {
  Products products;
  DetailsScreen({required this.products, Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen>
    with TickerProviderStateMixin {
  TabController? tabController;
  PageController? pageController;
  var currentTabIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    pageController = PageController(initialPage: 0, viewportFraction: 0.8);
    print(widget.products.name);
  }

  @override
  Widget build(BuildContext context) {
    var data = widget.products;
    ConfigSize().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          Screenbackground(),
          Padding(
              padding:
                  EdgeInsets.only(left: ConfigSize.defaultSize! * AppPading.p2),
              child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: vectorbutton(
                    ImageAssets.vector1,
                  ))),
          Padding(
            padding: EdgeInsets.only(
                left: ConfigSize.defaultSize! * AppPading.p2, top: 120),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Textstyle(data.name, 25, FontWeight.w700, AppColor.white),
                sizedbox(0, AppSize.s7),
                Textstyle(
                    "Type: ${data.type}", 15, FontWeight.w400, AppColor.white),
                sizedbox(0, AppSize.s20),
                boxview(
                    data.image,
                    ConfigSize.screenWidth! - AppSize.s60,
                    ConfigSize.screenHeight! / 3,
                    ConfigSize.screenWidth! / 1.5,
                    ConfigSize.screenHeight! / 2),
                sizedbox(0, AppSize.s30),
                Padding(
                  padding: EdgeInsets.only(left: 13),
                  child: Container(
                    height: ConfigSize.screenHeight! / 9,
                    child: ListView.builder(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, int) {
                          return Padding(
                            padding: EdgeInsets.all(
                                ConfigSize.defaultSize! * AppSize.s0_5),
                            child: boxview(
                                data.image,
                                ConfigSize.screenWidth! / 4.5,
                                ConfigSize.screenHeight! / 4.5,
                                ConfigSize.screenWidth! / 6,
                                ConfigSize.screenHeight! / 6),
                          );
                        }),
                  ),
                ),
                sizedbox(0, AppSize.s30),
                Padding(
                  padding: EdgeInsets.only(left: AppMargine.m12),
                  child: viewStore(company: data.company),
                ),
                sizedbox(0, AppSize.s30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Textstyle(
                            "price", 16, FontWeight.normal, AppColor.grey1),
                        sizedbox(0, AppSize.s5),
                        Textstyle("${data.price} EGP", 18, FontWeight.normal,
                            AppColor.black),
                      ],
                    ),
                    Container(
                        width: ConfigSize.screenWidth! / 2,
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
                        child: customButton("Add To Cart", ontap())),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: ConfigSize.defaultSize! * 3,
                      left: ConfigSize.defaultSize! * 6),
                  width: ConfigSize.screenWidth! - 150,
                  height: 1,
                  color: AppColor.grey1,
                ),
                sizedbox(0, AppSize.s20),
                TabBar(
                    onTap: (index) {
                      setState(() {
                        this.currentTabIndex = index;
                      });
                    },
                    isScrollable: false,
                    controller: tabController,
                    tabs: [
                      Text(
                        "Overview",
                        style: TextStyle(color: AppColor.black),
                      ),
                      Text(
                        "Spesification",
                        style: TextStyle(color: AppColor.black),
                      ),
                      Text(
                        "Review",
                        style: TextStyle(color: AppColor.black),
                      ),
                    ]),
                sizedbox(0, 20),
                _tabBarViewContent(currentTabIndex, data.Description),
              ],
            ),
          ),
        ]),
      ),
    );
  }

  void ontap() {}
}

Widget _tabBarViewContent(int currentTabIndex, String description) {
  Widget content = Container();
  switch (currentTabIndex) {
    case 0:
      content = Padding(
          padding: EdgeInsets.only(
              left: ConfigSize.screenWidth! / 50,
              right: ConfigSize.screenWidth! / 10),
          child: Text(description));
      break;
    case 1:
      content = Text("");
      break;
    case 2:
      content = Text("");
      break;
  }
  return content;
}
