import 'package:flutter/material.dart';
import 'package:task_payment_model/app/pages/home_page.dart';
import 'package:task_payment_model/app/utils/app_route.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[300],
      ),
      routes: {
        AppRoute.HOME: (ctx) => HomePage(),
      },
    );
  }
}
