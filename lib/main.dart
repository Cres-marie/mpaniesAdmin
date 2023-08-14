import 'package:flutter/material.dart';
import 'package:mpanies_admin/views/dashboard_page/widgets/dashboardScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashBoard(),
    );
  }
}