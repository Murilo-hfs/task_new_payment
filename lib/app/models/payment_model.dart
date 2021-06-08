import 'dart:convert';

import 'package:flutter/material.dart';

class PaymentModel {
  String object;
  String id;
  String status;
  double value;
  double discount;
  String identificationField;
  String dueDate;
  String scheduleDate;
  String paymentDate = '';
  double fee;
  String description;
  String companyName = '';
  String transactionReceiptUrl;
  bool canBeCancelled;
  String failReasons = '';
  PaymentModel({
    @required this.object,
    @required this.id,
    @required this.status,
    @required this.value,
    @required this.discount,
    @required this.identificationField,
    @required this.dueDate,
    @required this.scheduleDate,
    @required this.paymentDate,
    @required this.fee,
    @required this.description,
    @required this.companyName,
    @required this.transactionReceiptUrl,
    @required this.canBeCancelled,
    @required this.failReasons,
  });

  Map<String, dynamic> toMap() {
    return {
      'object': object,
      'id': id,
      'status': status,
      'value': value,
      'discount': discount,
      'identificationField': identificationField,
      'dueDate': dueDate,
      'scheduleDate': scheduleDate,
      'paymentDate': paymentDate,
      'fee': fee,
      'description': description,
      'companyName': companyName,
      'transactionReceiptUrl': transactionReceiptUrl,
      'canBeCancelled': canBeCancelled,
      'failReasons': failReasons,
    };
  }

  factory PaymentModel.fromMap(Map<String, dynamic> map) {
    return PaymentModel(
      object: map['object'],
      id: map['id'],
      status: map['status'],
      value: map['value'] + 0.0,
      discount: map['discount'] + 0.0,
      identificationField: map['identificationField'],
      dueDate: map['dueDate'],
      scheduleDate: map['scheduleDate'],
      paymentDate: map['paymentDate'],
      fee: map['fee'] + 0.0,
      description: map['description'],
      companyName: map['companyName'],
      transactionReceiptUrl: map['transactionReceiptUrl'],
      canBeCancelled: map['canBeCancelled'],
      failReasons: map['failReasons'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PaymentModel.fromJson(String source) =>
      PaymentModel.fromMap(json.decode(source));
}
