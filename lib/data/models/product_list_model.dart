
import 'package:ecommerce_project_by_ostad/data/models/product_model.dart';

class ProductListModel {
  String? msg;
  List<ProductModel>? productList;

  ProductListModel({this.msg, this.productList});

  ProductListModel.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    if (json['data'] != null) {
      productList = <ProductModel>[];
      json['data'].forEach((v) {
        productList!.add(ProductModel.fromJson(v));
      });
    }
  }
}