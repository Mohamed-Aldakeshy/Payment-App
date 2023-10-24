import 'package:flutter/material.dart';
import 'package:payment_app/Features/Checkout/Presentation/Views/my_card_view.dart';

void main() {
  runApp(const CheckoutApp());
}

class CheckoutApp extends StatelessWidget {
  const CheckoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCardView(),
    );
  }
}
