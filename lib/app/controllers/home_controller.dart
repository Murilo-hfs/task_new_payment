import 'package:task_payment_model/app/models/payment_model.dart';

import '../models/payment_model.dart';

enum HomeState { PENDING, BANK_PROCESSING, PAID, FAILED, CANCELLED }

class HomeController {
  // List<PaymentModel> list = [];
  // final repository = PaymentRepository();
  // final state = ValueNotifier<HomeState>(HomeState.BANK_PROCESSING);
  PaymentModel model;
  HomeController() {
    model = PaymentModel.fromMap({
      "object": "bill",
      "id": "7f0fb6ac-167c-4732-adee-61801209e26a",
      "status": "PENDING",
      "value": 98,
      "discount": 2,
      "identificationField":
          "83640000000-3 74550138008-3 00636394211-8 00048217848-0",
      "dueDate": "2020-04-20",
      "scheduleDate": "2020-03-15",
      "paymentDate": null,
      "fee": 0,
      "description": "Celular 03/12",
      "companyName": null,
      "transactionReceiptUrl": "https://www.asaas.com/comprovantes/00044645",
      "canBeCancelled": false,
      "failReasons": null
    });
  }
}
