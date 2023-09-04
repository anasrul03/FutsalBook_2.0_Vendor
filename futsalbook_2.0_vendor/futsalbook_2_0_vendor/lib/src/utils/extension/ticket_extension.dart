import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:futsalbook_2_0_vendor/src/utils/resources/ticket_status.dart';

extension TicketConstant on TicketStatus {
  String get statusTitle {
    switch (this) {
      case TicketStatus.booked:
        return "Booked";
      case TicketStatus.cancelled:
        return "Cancelled";
      case TicketStatus.attended:
        return "Attended";
      case TicketStatus.unattended:
        return "Unattended";
      case TicketStatus.error:
        return "Error";
      default:
        return "Not Stated";
    }
  }

  Color get ticketColor {
    switch (this) {
      case TicketStatus.booked:
        return Colors.green;
      case TicketStatus.cancelled:
        return Colors.red;
      case TicketStatus.attended:
        return Colors.green.shade800;
      case TicketStatus.unattended:
        return Colors.grey.shade800;
      case TicketStatus.error:
        return Colors.red;
      default:
        return Colors.yellow;
    }
  }
}
