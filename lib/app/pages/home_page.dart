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
        actions: [
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(primary: Colors.green[200]),
            icon: Icon(Icons.share),
            label: Text('Share'),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.account_balance_outlined),
                          Padding(
                            padding: const EdgeInsets.only(left: 3.0),
                            child: Text(
                              'Instituição Emissora',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        controller.model.companyName.toString(),
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.money_off),
                          Padding(
                            padding: const EdgeInsets.only(left: 3.0),
                            child: Text(
                              'Valor à ser pago',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                      Text('R\$ ${controller.model.value.toStringAsFixed(2)}',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Roboto',
                              color: Colors.redAccent)),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.calendar_today),
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              'Vencimento',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        controller.model.dueDate,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ],
                  ),
                  Divider(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Desconto',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'R\$ ${controller.model.discount.toStringAsFixed(2)}',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Taxa Asaas',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'R\$ ${controller.model.fee.toStringAsFixed(2)}',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Valor do documento',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'R\$ ${controller.model.value.toStringAsFixed(2)}',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Data do pagamento',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        controller.model.paymentDate,
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Divider(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Descrição',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        controller.model.description,
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Comprovante',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400),
                      ),
                      Flexible(
                          child: Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Text(
                          controller.model.transactionReceiptUrl,
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400),
                        ),
                      )),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Linha digitável',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        controller.model.identificationField
                            .replaceAll(' ', '\n'),
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Divider()
                ],
              ),
              TextButton(
                child: Text('AVANÇAR/CONCLUIR',
                    style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(primary: Colors.green[200]),
                onPressed: () {},
              ),
            ],
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
