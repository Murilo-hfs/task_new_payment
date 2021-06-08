import 'package:dio/dio.dart';
import 'package:task_payment_model/app/models/payment_model.dart';

class PaymentRepository {
  final dio = Dio();
  var url = 'https://www.asaas.com/api/v3/bill';

  Future<List<PaymentModel>> createPayment() async {
    var response = await dio.get(url);
    final list = response.data as List;

    List<PaymentModel> creatPayments = [];
    for (var json in list) {
      final payment = PaymentModel.fromJson(json);
      creatPayments.add(payment);
    }
    return creatPayments;
  }
}
