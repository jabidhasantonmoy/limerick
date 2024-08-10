import 'package:equatable/equatable.dart';

import '../../../../model/product_model.dart';

abstract class ProductState extends Equatable {
  @override
  List<Object?> get props => [];
}

class ProductInitial extends ProductState {
  @override
  List<Object?> get props => [];
}

class ProductLoading extends ProductState {
  @override
  List<Object?> get props => [];
}

class ProductLoaded extends ProductState {
  final ProductListModel productListModel;

  ProductLoaded({required this.productListModel});
  @override
  List<Object?> get props => [productListModel];
}

class ProductError extends ProductState {
  final String error;

  ProductError({required this.error});
  @override
  List<Object?> get props => [error];
}
