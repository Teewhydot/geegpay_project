import 'package:flutter/material.dart';
import 'package:geegpay_project/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'GeegPay',
        debugShowCheckedModeBanner: false,
      home: DashboardScreen(),
    );
  }
}
