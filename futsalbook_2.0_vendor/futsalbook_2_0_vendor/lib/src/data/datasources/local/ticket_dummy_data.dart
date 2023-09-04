import 'dart:math';

import 'package:futsalbook_2_0_vendor/src/domain/models/ticket_model.dart';
import 'package:futsalbook_2_0_vendor/src/utils/resources/ticket_status.dart';

class DummyData {
  static final List<Ticket> _tickets = [
    Ticket(
      courtID: 'MF001',
      customerID: 'CUS001',
      customerRemarks: 'Remarks information added here',
      paymentID: 'PY001',
      playingTimeDuration: 2,
      totalCost: 40,
      createdDate: _generateRandomDate(),
      bookedDate: _generateRandomBookedDate(),
      ticketStatus: TicketStatus.attended,
    ),
    Ticket(
      courtID: 'MF002',
      customerID: 'CUS002',
      customerRemarks: 'Remarks information added here',
      paymentID: 'PY002',
      playingTimeDuration: 2,
      totalCost: 40,
      createdDate: _generateRandomDate(),
      bookedDate: _generateRandomDate().add(const Duration(days: 5)),
      ticketStatus: TicketStatus.attended,
    ),
    Ticket(
      courtID: 'MF003',
      customerID: 'CUS003',
      customerRemarks: 'Remarks information added here',
      paymentID: 'PY003',
      playingTimeDuration: 2,
      totalCost: 40,
      createdDate: _generateRandomDate(),
      bookedDate: _generateRandomDate().add(const Duration(days: 2)),
      ticketStatus: TicketStatus.attended,
    ),
    Ticket(
      courtID: 'MF004',
      customerID: 'CUS004',
      customerRemarks: 'Remarks information added here',
      paymentID: 'PY004',
      playingTimeDuration: 2,
      totalCost: 40,
      createdDate: _generateRandomDate(),
      bookedDate: _generateRandomBookedDate().add(const Duration(days: 7)),
      ticketStatus: TicketStatus.cancelled,
    ),
    Ticket(
      courtID: 'MF005',
      customerID: 'CUS005',
      customerRemarks: 'Remarks information added here',
      paymentID: 'PY005',
      playingTimeDuration: 2,
      totalCost: 40,
      createdDate: _generateRandomDate(),
      bookedDate: _generateRandomBookedDate().add(const Duration(days: 1)),
      ticketStatus: TicketStatus.cancelled,
    ),
    Ticket(
      courtID: 'MF006',
      customerID: 'CUS006',
      customerRemarks: 'Remarks information added here',
      paymentID: 'PY006',
      playingTimeDuration: 2,
      totalCost: 40,
      createdDate: _generateRandomDate(),
      bookedDate: _generateRandomBookedDate().add(const Duration(days: 1)),
      ticketStatus: TicketStatus.cancelled,
    ),
    Ticket(
      courtID: 'MF007',
      customerID: 'CUS007',
      customerRemarks: 'Remarks information added here',
      paymentID: 'PY007',
      playingTimeDuration: 2,
      totalCost: 40,
      createdDate: _generateRandomDate(),
      bookedDate: _generateRandomDate().add(const Duration(days: 1)),
      ticketStatus: TicketStatus.unattended,
    ),
    Ticket(
      courtID: 'MF008',
      customerID: 'CUS008',
      customerRemarks: 'Remarks information added here',
      paymentID: 'PY008',
      playingTimeDuration: 2,
      totalCost: 40,
      createdDate: _generateRandomDate(),
      bookedDate: _generateRandomDate().add(const Duration(days: 9)),
      ticketStatus: TicketStatus.unattended,
    ),
    Ticket(
      courtID: 'MF009',
      customerID: 'CUS009',
      customerRemarks: 'Remarks information added here',
      paymentID: 'PY009',
      playingTimeDuration: 2,
      totalCost: 40,
      createdDate: _generateRandomDate(),
      bookedDate: _generateRandomDate().add(const Duration(days: 9)),
      ticketStatus: TicketStatus.unattended,
    ),
    Ticket(
      courtID: 'MF010',
      customerID: 'CUS010',
      customerRemarks: 'Remarks information added here',
      paymentID: 'PY010',
      playingTimeDuration: 2,
      totalCost: 40,
      createdDate: _generateRandomDate(),
      bookedDate: _generateRandomBookedDate().add(const Duration(days: 9)),
      ticketStatus: TicketStatus.booked,
    ),
    Ticket(
      courtID: 'MF010',
      customerID: 'CUS010',
      customerRemarks: 'Remarks information added here',
      paymentID: 'PY010',
      playingTimeDuration: 2,
      totalCost: 40,
      createdDate: _generateRandomDate(),
      bookedDate: _generateRandomBookedDate().add(const Duration(days: 9)),
      ticketStatus: TicketStatus.booked,
    ),
    Ticket(
      courtID: 'MF010',
      customerID: 'CUS010',
      customerRemarks: 'Remarks information added here',
      paymentID: 'PY010',
      playingTimeDuration: 2,
      totalCost: 40,
      createdDate: _generateRandomDate(),
      bookedDate: _generateRandomBookedDate().add(const Duration(days: 9)),
      ticketStatus: TicketStatus.booked,
    )
  ];

  static List<Ticket> get tickets => _tickets;

  static DateTime _generateRandomDate() {
    final random = Random();
    final startDate = DateTime(2023, 1, 1); // Define your desired start date
    final endDate =
        DateTime.now(); // Use current date as the end date or adjust as needed
    final difference = endDate.difference(startDate).inDays;
    final randomDays = random.nextInt(difference + 1);
    return startDate.add(Duration(days: randomDays));
  }

  static DateTime _generateRandomBookedDate() {
    final random = Random();
    final startDate = DateTime.now(); // Define your desired start date
    final endDate = DateTime(
        2024, 9); // Use current date as the end date or adjust as needed
    final difference = endDate.difference(startDate).inDays;
    final randomDays = random.nextInt(difference + 1);
    return startDate.add(Duration(days: randomDays));
  }
}
