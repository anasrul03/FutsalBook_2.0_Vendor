import 'package:flutter/material.dart';
import 'package:futsalbook_2_0_vendor/src/presentation/widgets/booked_court_card.dart';
import 'package:futsalbook_2_0_vendor/src/presentation/widgets/profit_card.dart';
import 'package:futsalbook_2_0_vendor/src/presentation/widgets/promotion_card.dart';
import 'package:futsalbook_2_0_vendor/src/presentation/widgets/user_name_card.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white54,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const UserNameCard(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [BookedCourtCard(), ProfitCard()],
              ),
              const Text("Your Active Promotions"),
              const Divider(
                indent: 15,
                endIndent: 15,
                thickness: 2,
              ),
              PromotionCard(
                iconButton:
                    IconButton(onPressed: () {}, icon: const Icon(Icons.abc)),
                subtitle: '',
                tileTitle: '',
                title: '',
              ),
            ],
          )),
    );
  }
}
