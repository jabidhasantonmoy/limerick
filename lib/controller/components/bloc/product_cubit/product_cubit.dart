import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:limerick_assignment/model/product_model.dart';

import '../../../repositories/product_api_helper.dart';
import 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());

  ProductApiHelper productApiHelper = ProductApiHelper();
  ProductListModel? productListModel;

  void clearState() {
    productListModel = null;
  }

  Future<void> getProduct() async {
    // debugPrint('get product called');
    try {
      emit(ProductLoading());
      await productApiHelper.getProductList().then((value) {
        productListModel = value;
        if (productListModel == null) {
          emit(ProductError(error: 'No Data..'));
        } else {
          emit(ProductLoaded(productListModel: productListModel!));
        }
      });
    } catch (e) {
      // throw(e.toString());
      emit(ProductError(error: e.toString()));
    }
  }
}
