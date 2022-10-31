import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:products_application/business_logic/bloc/global_bloc.dart';
import 'package:products_application/constants/asset_manager.dart';
import 'package:products_application/constants/config_size.dart';
import 'package:products_application/constants/onpreesdbutton.dart';
import 'package:products_application/constants/string_manager.dart';
import 'package:products_application/constants/value_manager.dart';
import 'package:products_application/data/data_providers/remote/dio_helper.dart';

import 'package:products_application/presentation/styles/colors.dart';

import 'package:products_application/presentation/view/product_card.dart';
import 'package:products_application/presentation/view/search_bar.dart';
import 'package:products_application/presentation/view/tab_bar_button.dart';
import 'package:products_application/presentation/view/vector_button.dart';
import 'package:products_application/presentation/widget/bottom_bar_button.dart';

import 'package:products_application/presentation/widget/screens_background.dart';
import 'package:products_application/presentation/widget/sizebox.dart';
import 'package:products_application/presentation/widget/tab_bar_icon.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  TabController? tabController;
  PageController? pageController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
    pageController = PageController(initialPage: 0, viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    ConfigSize().init(context);
    return BlocProvider(
      create: (context) => GlobalBloc(
        DioHelper(),
      )..add(GetProductDataEvent()),
      child: Scaffold(
        body: Stack(alignment: AlignmentDirectional.topCenter, children: [
          Screenbackground(),
          Column(
            children: [
              Row(
                children: [
                  searchBar(),
                  vectorbutton(
                    ImageAssets.vector,
                  ),
                ],
              ),
              sizedbox(0, AppSize.s30),
              Container(
                  width: ConfigSize.screenWidth! - AppSize.s60,
                  height: ConfigSize.screenHeight! - AppSize.s700,
                  decoration: BoxDecoration(color: AppColor.white),
                  child: Image(
                    fit: BoxFit.fill,
                    image: AssetImage(ImageAssets.mainAcerLabtop_3),
                  )),
              sizedbox(0, AppSize.s20),
              TabBar(
                  onTap: (int) {
                    setState(() {});
                  },
                  isScrollable: true,
                  controller: tabController,
                  indicatorColor: Colors.transparent,
                  tabs: [
                    tabBarButtons(
                        tabController, 0, AppString.all, ImageAssets.cuplogo),
                    tabBarButtons(
                        tabController, 1, AppString.acer, ImageAssets.acerlogo),
                    tabBarButtons(tabController, 2, AppString.razer,
                        ImageAssets.razerlogo),
                    tabBarButtons(
                        tabController, 3, AppString.apple, ImageAssets.ioslogo),
                  ]),
              sizedbox(0, AppSize.s20),
              tabController!.index == 0
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: ConfigSize.defaultSize! * AppSize.s3),
                          child: Text(
                            AppString.recomended,
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ],
                    )
                  : Text(""),
              Expanded(child: BlocBuilder<GlobalBloc, GlobalState>(
                builder: (context, state) {
                  return TabBarView(controller: tabController, children: [
                    GridView.count(
                      mainAxisSpacing: 20,
                      crossAxisCount: 2,
                      children:
                          List.generate(state.productsdata.length, (index) {
                        return ProductCard(
                            state.productsdata[index].name,
                            state.productsdata[index].company,
                            state.productsdata[index].price,
                            state.productsdata[index].image,
                            state.productsdata[index],
                            context);
                      }),
                    ),
                    Text(""),
                    Text(""),
                    Text("")
                  ]);
                },
              ))
            ],
          ),
        ]),
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColor.blue,
          child: const Icon(Icons.home),
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Container(
            width: ConfigSize.screenWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    onpressed().onpressedlogout(context);
                  },
                  child: appbarButton(
                    Icons.logout,
                  ),
                ),
                appbarButton(
                  Icons.favorite,
                ),
                appbarButton(
                  Icons.notifications,
                ),
                appbarButton(
                  Icons.settings,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void ontap() {}
}
