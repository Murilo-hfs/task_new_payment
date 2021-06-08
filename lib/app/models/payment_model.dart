class PaymentModel {
  String object;
  String id;
  String status;
  int value;
  int discount;
  String identificationField;
  String dueDate;
  String scheduleDate;
  Null paymentDate;
  int fee;
  String description;
  Null companyName;
  String transactionReceiptUrl;
  bool canBeCancelled;
  Null failReasons;

  PaymentModel(
      {this.object,
      this.id,
      this.status,
      this.value,
      this.discount,
      this.identificationField,
      this.dueDate,
      this.scheduleDate,
      this.paymentDate,
      this.fee,
      this.description,
      this.companyName,
      this.transactionReceiptUrl,
      this.canBeCancelled,
      this.failReasons});

  PaymentModel.fromJson(Map<String, dynamic> json) {
    object = json['object'];
    id = json['id'];
    status = json['status'];
    value = json['value'];
    discount = json['discount'];
    identificationField = json['identificationField'];
    dueDate = json['dueDate'];
    scheduleDate = json['scheduleDate'];
    paymentDate = json['paymentDate'];
    fee = json['fee'];
    description = json['description'];
    companyName = json['companyName'];
    transactionReceiptUrl = json['transactionReceiptUrl'];
    canBeCancelled = json['canBeCancelled'];
    failReasons = json['failReasons'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['object'] = this.object;
    data['id'] = this.id;
    data['status'] = this.status;
    data['value'] = this.value;
    data['discount'] = this.discount;
    data['identificationField'] = this.identificationField;
    data['dueDate'] = this.dueDate;
    data['scheduleDate'] = this.scheduleDate;
    data['paymentDate'] = this.paymentDate;
    data['fee'] = this.fee;
    data['description'] = this.description;
    data['companyName'] = this.companyName;
    data['transactionReceiptUrl'] = this.transactionReceiptUrl;
    data['canBeCancelled'] = this.canBeCancelled;
    data['failReasons'] = this.failReasons;
    return data;
  }
}