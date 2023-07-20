import 'Account.dart';

class VerifyModel {
  VerifyModel({
      this.status, 
      this.message, 
      this.account,});

  VerifyModel.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    account = json['account'] != null ? Account.fromJson(json['account']) : null;
  }
  int? status;
  String? message;
  Account? account;


}