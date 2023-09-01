import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
          Padding(
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
          ),
          const Divider(
            thickness: 2,
            indent: 10,
            endIndent: 10,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: DummyData.tickets.length,
                itemBuilder: (context, index) {
                  final ticket = DummyData.tickets[index];
                  return Card(
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      tileColor: Colors.white,
                      subtitle: _buildDateTimeWithDuration(ticket),
                      title: Text(ticket.courtID),
                      trailing: _buildTrailingWidget(ticket),
                    ),
                  );
                }),
          )
        ],
      )),
    );
  }

  Padding _buildTrailingWidget(Ticket ticket) {
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
              text: ticket.ticketStatus.ticketTitle),
          Text(
            "${ticket.playingTimeDuration} hours",
            style: const TextStyle(fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }

  Widget _buildDateTimeWithDuration(Ticket ticket) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          DateFormat.E().format(ticket.bookedDate),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          DateFormat.yMMMd().add_jm().format(ticket.bookedDate),
          style: TextStyle(color: Colors.grey.shade600),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
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
          style: TextStyle(color: Colors.grey.shade600),
        ),
      ],
    );
  }
}
