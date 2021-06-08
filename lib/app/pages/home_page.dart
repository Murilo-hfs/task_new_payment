import 'package:flutter/material.dart';
import 'package:task_payment_model/app/controllers/home_controller.dart';

import '../controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  final controller = HomeController();
  final String title;
  HomePage({this.title = 'Comprovante'});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Código de barras'),
                Text(
                    controller.model.identificationField.replaceAll(' ', '\n')),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildStateByENUM() {
    HomeState state = HomeState.values.firstWhere(
        (element) => element.toString().endsWith(controller.model.status));

    return Text(
      getLabelByENUM(state),
      style: TextStyle(
        color: Colors.white,
        backgroundColor: getColorByENUM(state),
      ),
    );
  }

  String getLabelByENUM(HomeState state) {
    switch (state) {
      case HomeState.PENDING:
        return 'Pendente';
      case HomeState.BANK_PROCESSING:
        return 'Em processamento bancário';
      case HomeState.PAID:
        return 'Pago';
      case HomeState.FAILED:
        return 'Falhou';
      case HomeState.CANCELLED:
        return 'Cancelado';
      default:
        return '';
    }
  }

  Color getColorByENUM(HomeState state) {
    switch (state) {
      case HomeState.PENDING:
        return Colors.orange;
      case HomeState.BANK_PROCESSING:
        return Colors.grey;
      case HomeState.PAID:
        return Colors.green;
      case HomeState.FAILED:
        return Colors.red;
      case HomeState.CANCELLED:
        return Colors.red;
      default:
        return Colors.white;
    }
  }
}
