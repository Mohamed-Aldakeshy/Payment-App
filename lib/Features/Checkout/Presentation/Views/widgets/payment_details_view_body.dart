import 'package:flutter/material.dart';
import 'package:payment_app/Features/Checkout/Presentation/Views/widgets/custom_credit_card.dart';
import 'package:payment_app/Features/Checkout/Presentation/Views/widgets/payment_method_list_view.dart';

class PaymentDestailsViewBody extends StatelessWidget {
  const PaymentDestailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          PaymentMethodsListView(),
          CustomCreditCard(),
        ],
      ),
    );
  }
}
