import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../model/product_model.dart';
import '../components/utils/api_urls.dart';
import 'auth_api_helper.dart';

class ProductApiHelper {
  ProductListModel productListModel = ProductListModel(data: []);
  String accessToken = AuthApiHelper.getAccessTokenFromSP();

  Future<ProductListModel> getProductList() async {
    try {
      if (accessToken.isNotEmpty) {
        var url = Uri.parse(ApiUrl.getProductUrl);
        var response = await http.get(
          url,
          headers: {
            "content-type": "application/json",
            "accept": "application/json",
            "Authorization": "Bearer $accessToken"
          },
        );
        if (response.statusCode == 200) {
          var responseList = await jsonDecode(utf8.decode(response.bodyBytes));

          for (var element in responseList) {
            productListModel.data.add(ProductModel.fromJson(element));
          }
          return productListModel;
        }
      }
      return productListModel;
    } catch (e) {
      throw (e.toString());
    }
  }
}
