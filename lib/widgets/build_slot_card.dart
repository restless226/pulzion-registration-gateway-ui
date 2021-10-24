import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'book_slots_button.dart';

class BuildSlotCard extends StatelessWidget {
  final Color color;
  final String eventText;

  BuildSlotCard(this.color, this.eventText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.12,
      child: Card(
        elevation: 3,
        color: color,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              topLeft: Radius.circular(10),
            ),
            side: BorderSide(width: 2.5, color: Colors.grey)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                eventText,
                style: GoogleFonts.mcLaren(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              bookSlotButton(),
            ],
          ),
        ),
      ),
    );
  }
}
