import 'package:flutter/material.dart';
import 'package:task_payment_model/app/controllers/home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  void initState() {
    super.initState();
    controller.getPayment();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Model'),
      ),
      body: AnimatedBuilder(
        animation: controller.state,
        builder: (context, child) {
          return controller.stateManagement(controller.state.value);
        },
      ),
    );
  }
}
