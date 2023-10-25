import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_app/Features/Checkout/Presentation/Views/widgets/card_info_widget.dart';
import 'package:payment_app/Features/Checkout/Presentation/Views/widgets/payment_item_info.dart';
import 'package:payment_app/Features/Checkout/Presentation/Views/widgets/total_price.dart';
import 'package:payment_app/core/utils/styles.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: Color(0xFFD9D9D9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 50 + 16, left: 22, right: 22),
        child: Column(
          children: [
            Text(
              'Thank you!',
              textAlign: TextAlign.center,
              style: Styles.style25,
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              'Your transaction was successful',
              textAlign: TextAlign.center,
              style: Styles.style20,
            ),
            const SizedBox(
              height: 42,
            ),
            PaymentItemInfo(
              title: 'Date',
              value: '01/24/2023',
            ),
            SizedBox(
              height: 20,
            ),
            PaymentItemInfo(
              title: 'Time',
              value: '10:15 AM',
            ),
            SizedBox(
              height: 20,
            ),
            PaymentItemInfo(
              title: 'To',
              value: 'Sam Louis',
            ),
            const Divider(
              thickness: 2,
              height: 60,
            ),
            TotalPrice(
              title: 'Total',
              value: r'$50.97',
            ),
            SizedBox(
              height: 30,
            ),
            CardInfoWidget(),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset('assets/images/barcode.svg'),
                Container(
                  width: 113,
                  height: 58,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1.50, color: Color(0xFF34A853)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: Text('PAID',
                        textAlign: TextAlign.center,
                        style:
                            Styles.style24.copyWith(color: Color(0xff34A853))),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: ((MediaQuery.sizeOf(context).height * 0.2 + 20) / 2) - 29,
            ),
          ],
        ),
      ),
    );
  }
}
