import 'package:task_payment_model/app/models/payment_model.dart';
import 'package:task_payment_model/app/repository/payment_repository.dart';

class HomeController {
  List<PaymentModel> list = [];
  final repository = PaymentRepository();
  HomeState state = HomeState.PENDING;

  Future start() async {
    state = HomeState.BANK_PROCESSING;
    try {
      list = await repository.createPayment();
      state = HomeState.PAID;
    } catch (e) {
      state = HomeState.FAILED;
    }
  }
}

enum HomeState { PENDING, BANK_PROCESSING, PAID, FAILED, CANCELLED }
