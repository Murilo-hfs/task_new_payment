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
}
