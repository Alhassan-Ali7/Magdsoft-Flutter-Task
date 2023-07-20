import 'Products.dart';

class ProductModel {
  ProductModel({
      this.status, 
      this.message, 
      this.products,});

  ProductModel.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    if (json['products'] != null) {
      products = [];
      json['products'].forEach((v) {
        products!.add(Products.fromJson(v));
      });
    }
  }
  int? status;
  String? message;
  List<Products>? products;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['message'] = message;
    if (products != null) {
      map['products'] = products!.map((v) => v.toJson()).toList();
    }
    return map;
  }

}