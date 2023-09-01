import 'package:futsalbook_2_0_vendor/src/domain/models/ticket_model.dart';
import 'package:futsalbook_2_0_vendor/src/utils/resources/ticket_status.dart';

class DummyData {
  static final List<Ticket> _tickets = [
    Ticket(
      courtID: 'MF005',
      customerID: 'CUS005',
      customerRemarks: 'Remarks information added here',
      paymentID: 'PY005',
      playingTimeDuration: 2,
      totalCost: 40,
      createdDate: DateTime.now(),
      bookedDate: DateTime.now(),
      ticketStatus: TicketStatus.attended,
    ),
    Ticket(
      courtID: 'MF006',
      customerID: 'CUS006',
      customerRemarks: 'Remarks information added here',
      paymentID: 'PY006',
      playingTimeDuration: 2,
      totalCost: 40,
      createdDate: DateTime.now(),
      bookedDate: DateTime.now().add(const Duration(days: 5)),
      ticketStatus: TicketStatus.attended,
    ),
    Ticket(
      courtID: 'MF001',
      customerID: 'CUS001',
      customerRemarks: 'Remarks information added here',
      paymentID: 'PY001',
      playingTimeDuration: 2,
      totalCost: 40,
      createdDate: DateTime.now(),
      bookedDate: DateTime.now().add(const Duration(days: 2)),
      ticketStatus: TicketStatus.attended,
    ),
    Ticket(
      courtID: 'MF002',
      customerID: 'CUS002',
      customerRemarks: 'Remarks information added here',
      paymentID: 'PY002',
      playingTimeDuration: 2,
      totalCost: 40,
      createdDate: DateTime.now(),
      bookedDate: DateTime.now().add(const Duration(days: 7)),
      ticketStatus: TicketStatus.cancelled,
    ),
    Ticket(
      courtID: 'MF003',
      customerID: 'CUS003',
      customerRemarks: 'Remarks information added here',
      paymentID: 'PY003',
      playingTimeDuration: 2,
      totalCost: 40,
      createdDate: DateTime.now(),
      bookedDate: DateTime.now().add(const Duration(days: 1)),
      ticketStatus: TicketStatus.unattended,
    ),
    Ticket(
      courtID: 'MF004',
      customerID: 'CUS004',
      customerRemarks: 'Remarks information added here',
      paymentID: 'PY004',
      playingTimeDuration: 2,
      totalCost: 40,
      createdDate: DateTime.now(),
      bookedDate: DateTime.now().add(const Duration(days: 9)),
      ticketStatus: TicketStatus.booked,
    )
  ];

  static List<Ticket> get tickets => _tickets;
}
