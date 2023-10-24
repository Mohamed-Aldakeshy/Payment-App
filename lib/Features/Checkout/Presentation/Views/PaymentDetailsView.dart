import 'package:flutter/material.dart';
import 'package:payment_app/Features/Checkout/Presentation/Views/widgets/custom_appbar.dart';
import 'package:payment_app/Features/Checkout/Presentation/Views/widgets/payment_details_view_body.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'Payment Details'),
      body: PaymentDestailsViewBody(),
    );
  }
}
