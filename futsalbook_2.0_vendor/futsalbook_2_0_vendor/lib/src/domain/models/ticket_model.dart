import 'package:futsalbook_2_0_vendor/src/utils/resources/ticket_status.dart';

class Ticket {
  final String courtID;
  final String customerID;
  final String paymentID;
  final String customerRemarks;
  final num playingTimeDuration;
  final num totalCost;
  final DateTime createdDate;
  final DateTime bookedDate;
  final TicketStatus ticketStatus;

  Ticket({
    required this.courtID,
    required this.customerID,
    required this.customerRemarks,
    required this.paymentID,
    required this.playingTimeDuration,
    required this.totalCost,
    required this.createdDate,
    required this.bookedDate,
    required this.ticketStatus,
  });
}
