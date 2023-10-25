import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:payment_app/Features/Checkout/Presentation/Views/thank_you_view.dart';
import 'package:payment_app/Features/Checkout/Presentation/Views/widgets/custom_credit_card.dart';
import 'package:payment_app/Features/Checkout/Presentation/Views/widgets/payment_method_list_view.dart';
import 'package:payment_app/core/widgets/custom_button.dart';

class PaymentDestailsViewBody extends StatefulWidget {
  const PaymentDestailsViewBody({super.key});

  @override
  State<PaymentDestailsViewBody> createState() =>
      _PaymentDestailsViewBodyState();
}

class _PaymentDestailsViewBodyState extends State<PaymentDestailsViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const SliverToBoxAdapter(
          child: PaymentMethodsListView(),
        ),
        SliverToBoxAdapter(
          child: CustomCreditCard(
            autovalidateMode: autovalidateMode,
            formKey: formKey,
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 32, left: 16, right: 16),
              child: CustomButton(
                text: 'Pay',
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    log('payment');
                  } else {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const ThankYouView();
                        },
                      ),
                    );
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
