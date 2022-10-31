import 'package:dio/dio.dart';
import 'package:products_application/constants/end_points.dart';

import 'package:products_application/data/models/help_model.dart';
import 'package:products_application/data/models/login_model.dart';
import 'package:products_application/data/models/products.model.dart';

class DioHelper {
  Future<List<HelpModel>> gethelpdata() async {
    final response = await Dio().get(endPoints.helpData);

    return List<HelpModel>.from((response.data["help"] as List).map(
      (e) => HelpModel.fromJason(e),
    ));
  }

  Future<List<ProductsModel>> getproductData() async {
    final response = await Dio().get(endPoints.productData);

    return List<ProductsModel>.from((response.data["products"] as List).map(
      (e) => ProductsModel.fromJason(e),
    ));
  }

  Future<LoginModel> postloginData(String name, String phonenumber) async {
    final response =
        await Dio().post(endPoints.getloginpath(name, phonenumber));
    print(response);

    return LoginModel.fromJason(response.data);
  }
}
