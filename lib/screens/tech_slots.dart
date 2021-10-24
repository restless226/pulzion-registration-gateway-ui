import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulzion_reg_app/screens/nonTech_events_screen.dart';
import 'package:pulzion_reg_app/screens/non_tech_slots.dart';
import 'package:pulzion_reg_app/widgets/build_slot_card.dart';
import 'package:pulzion_reg_app/widgets/previous_and_next_button.dart';

class TechSlots extends StatefulWidget {
  @override
  _TechSlotsState createState() => _TechSlotsState();
}

class _TechSlotsState extends State<TechSlots> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'TechSlots',
            style:
                GoogleFonts.mcLaren(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
          child: Column(
            children: <Widget>[
              BuildSlotCard(Colors.amber, 'Code Buddy'),
              SizedBox(
                height: 8,
              ),
              BuildSlotCard(Colors.green, 'Data Quest'),
              SizedBox(
                height: 8,
              ),
              BuildSlotCard(Colors.red, 'Web-App Dev'),
              SizedBox(
                height: 8,
              ),
              BuildSlotCard(Colors.pinkAccent, 'ElectroQuest'),
              SizedBox(
                height: 8,
              ),
              BuildSlotCard(Colors.blue, 'Bug-Off'),
              SizedBox(
                height: 8,
              ),
              BuildSlotCard(Colors.brown, 'Just Coding'),
              SizedBox(
                height: 8,
              ),
              BuildSlotCard(Colors.teal, 'Recode It'),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  PrevNextButton('Previous', NonTechEvent()),
                  PrevNextButton('Next', NonTechSlots()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
