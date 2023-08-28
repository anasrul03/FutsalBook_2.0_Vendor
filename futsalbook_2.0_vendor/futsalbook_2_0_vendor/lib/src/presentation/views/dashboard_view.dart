import 'package:flutter/material.dart';
import 'package:futsalbook_2_0_vendor/src/presentation/widgets/booked_court_card.dart';
import 'package:futsalbook_2_0_vendor/src/presentation/widgets/profit_card.dart';
import 'package:futsalbook_2_0_vendor/src/presentation/widgets/promotion_card.dart';
import 'package:futsalbook_2_0_vendor/src/presentation/widgets/user_namecard.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          UserNameCard(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [BookedCourtCard(), ProfitCard()],
          ),
          PromotionCard()
        ],
      )),
    );
  }
}
