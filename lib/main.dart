import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_app/Features/Checkout/Presentation/Views/my_card_view.dart';
import 'package:payment_app/core/utils/api_keys.dart';

void main() {
  Stripe.publishableKey = ApiKeys.puplishableKey;
  runApp(const CheckoutApp());
}

class CheckoutApp extends StatelessWidget {
  const CheckoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCardView(),
    );
  }
}

// paymentIntentObject create payment intent (req amount ,req currency)
// init payment sheet (paymentIntentClientSecret)
// presentPaymentSheet()


// paymentIntentModel create payment intent (amount , currency , customerId)
// KeySecret create ephemeralKey (customerId)
// initPaymentSheet (merchantDisplayName , intentClientSecret ,  ephemeralKeySecret)
// presentPaymentSheet()