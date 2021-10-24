import 'package:flutter/material.dart';
import 'package:pulzion_reg_app/widgets/slot_booking_window.dart';

class bookSlotButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        'Book Slot',
        style: TextStyle(fontSize: 18, color: Colors.black),
      ),
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return GestureDetector(
              child: SlotBookingWindow(null),
              onTap: () {},
              behavior: HitTestBehavior.opaque,
            );
          },
        );
      },
    );
  }
}
