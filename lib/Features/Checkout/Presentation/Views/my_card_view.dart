import 'package:flutter/material.dart';
import 'package:payment_app/Features/Checkout/Presentation/Views/widgets/custom_appbar.dart';
import 'package:payment_app/Features/Checkout/Presentation/Views/widgets/my_card_view_body.dart';

class MyCardView extends StatelessWidget {
  const MyCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'My Card'),
      body: const MyCardViewBody(),
    );
  }
}
