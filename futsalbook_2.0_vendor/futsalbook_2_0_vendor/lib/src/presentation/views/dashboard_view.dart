import 'package:flutter/material.dart';
import 'package:futsalbook_2_0_vendor/src/data/datasources/local/ticket_dummy_data.dart';
import 'package:futsalbook_2_0_vendor/src/presentation/widgets/booked_court_card.dart';
import 'package:futsalbook_2_0_vendor/src/presentation/widgets/profit_card.dart';
import 'package:futsalbook_2_0_vendor/src/presentation/widgets/promotion_card.dart';
import 'package:futsalbook_2_0_vendor/src/presentation/widgets/user_name_card.dart';
import 'package:intl/intl.dart';

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
              Expanded(
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: DummyData.promotions.length,
                    itemBuilder: (context, index) {
                      final promotion = DummyData.promotions[index];
                      return PromotionCard(
                          title: promotion.title,
                          tileTitle: promotion.venueID,
                          subtitle: DateFormat.yMMMMEEEEd()
                              .format(promotion.createdDate),
                          iconButton: IconButton(
                              onPressed: () {}, icon: const Icon(Icons.info)));
                    }),
              )
            ],
          )),
    );
  }
}
