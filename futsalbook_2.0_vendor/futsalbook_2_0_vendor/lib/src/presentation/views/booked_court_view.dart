import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:futsalbook_2_0_vendor/src/presentation/widgets/day_selector_radio_list.dart';
import 'package:futsalbook_2_0_vendor/src/domain/models/ticket_model.dart';
import 'package:futsalbook_2_0_vendor/src/presentation/widgets/tag.dart';
import 'package:futsalbook_2_0_vendor/src/utils/extension/ticket_extension.dart';
import 'package:futsalbook_2_0_vendor/src/data/datasources/local/ticket_dummy_data.dart';

class BookedCourtPage extends StatelessWidget {
  const BookedCourtPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTopTitle(),
          const Divider(
            thickness: 2,
            indent: 10,
            endIndent: 10,
          ),
          const RadioDaySelectorWidget(),
          Expanded(
            child: _buildBookedList(),
          )
        ],
      )),
    );
  }

  Widget _buildTopTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Booked Court",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.sort),
            color: Colors.grey,
          )
        ],
      ),
    );
  }

  Widget _buildBookedList() {
    final sortByStatus = DummyData.tickets
      ..sort((a, b) {
        // Define a custom sorting order for statuses
        // final statusOrder = {
        //   'Booked': 1,
        //   'Cancelled': 2,
        //   'Unattended': 3,
        //   'Attended': 4,
        // };
        // // Compare based on the custom status order
        // int statusComparison = statusOrder[a.ticketStatus.statusTitle]!
        //     .compareTo(statusOrder[b.ticketStatus.statusTitle]!);

        // if (statusComparison != 0) {
        //   // If statuses are different, sort by status order
        //   return statusComparison;
        // } else {
        // If statuses are the same, sort by createdDate (earliest first)
        return a.bookedDate.compareTo(b.bookedDate);
        // }
      });
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: sortByStatus.length,
        itemBuilder: (context, index) {
          final ticket = DummyData.tickets[index];
          return Stack(
            alignment: Alignment.center,
            children: [
              Card(
                margin: const EdgeInsets.only(bottom: 50, left: 4, right: 4),
                color: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 2.0, left: 6),
                    child: Text(
                      "Booked by ${ticket.customerID}",
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ),
              ),
              Card(
                elevation: 4,
                child: ListTile(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
                  tileColor: Colors.white,
                  subtitle: _buildDateTimeWithDuration(ticket, 14),
                  title: Text("Court ${ticket.courtID}"),
                  trailing: _buildTrailingWidget(ticket),
                ),
              ),
            ],
          );
        });
  }

  Widget _buildTrailingWidget(Ticket ticket) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Tag(
              color: ticket.ticketStatus.ticketColor,
              textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w400),
              text: ticket.ticketStatus.statusTitle),
          Text(
            "${ticket.playingTimeDuration} hours",
            style: const TextStyle(fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }

  Widget _buildDateTimeWithDuration(Ticket ticket, double fontSize) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          DateFormat.E().format(ticket.bookedDate),
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          DateFormat("d/M/yy").add_jm().format(ticket.bookedDate),
          style: TextStyle(color: Colors.grey.shade600, fontSize: fontSize),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.0),
          child: Icon(
            Icons.arrow_forward,
            size: 20,
          ),
        ),
        Text(
          DateFormat.jm().format(
            ticket.bookedDate.add(
              Duration(
                hours: int.parse(
                  ticket.playingTimeDuration.toString(),
                ),
              ),
            ),
          ),
          style: TextStyle(color: Colors.grey.shade600, fontSize: fontSize),
        ),
      ],
    );
  }
}
