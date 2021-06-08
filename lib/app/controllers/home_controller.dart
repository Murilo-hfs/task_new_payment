import 'package:flutter/material.dart';
import 'package:task_payment_model/app/models/payment_model.dart';
import 'package:task_payment_model/app/repository/payment_repository.dart';

class HomeController {
  List<PaymentModel> list = [];
  final repository = PaymentRepository();
  final state = ValueNotifier<HomeState>(HomeState.BANK_PROCESSING);

  Future getPayment() async {
    state.value = HomeState.PENDING;
    try {
      list = await repository.createPayment();
      state.value = HomeState.PAID;
    } catch (e) {
      state.value = HomeState.FAILED;
    }
  }

  stateManagement(HomeState state) {
    switch (state) {
      case HomeState.PENDING:
        return _pending();
      case HomeState.BANK_PROCESSING:
        return _bankProcessing();
      case HomeState.PAID:
        return _paid();
      case HomeState.FAILED:
        return _failed();
      default:
        return _canceled();
    }
  }

  _pending() {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        var payments = list[index];
        return Card(
          child: Padding(
            padding: EdgeInsets.all(14),
            child: ListTile(
              title: Text(payments.identificationField),
              subtitle: Text(payments.value.toString()),
            ),
          ),
        );
      },
    );
  }

  _bankProcessing() {
    return Center(child: CircularProgressIndicator());
  }

  _paid() {
    return Center(
        child: Text('Pago',
            style:
                TextStyle(color: Colors.white, backgroundColor: Colors.green)));
  }

  _failed() {
    return Center(
        child: Text('Falha na transação',
            style:
                TextStyle(color: Colors.white, backgroundColor: Colors.red)));
  }

  _canceled() {
    return Center(
        child: Text('Transação Cancelada',
            style: TextStyle(
                color: Colors.white, backgroundColor: Colors.redAccent)));
  }
}

enum HomeState { PENDING, BANK_PROCESSING, PAID, FAILED, CANCELLED }
