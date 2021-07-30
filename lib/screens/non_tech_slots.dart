import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulzion_reg_app/screens/tech_slots.dart';
import 'package:pulzion_reg_app/widgets/book_slots_button.dart';
import 'package:pulzion_reg_app/widgets/build_slot_card.dart';
import 'package:pulzion_reg_app/widgets/previous_and_next_button.dart';

class NonTechSlots extends StatefulWidget {
  @override
  _NonTechSlotsState createState() => _NonTechSlotsState();
}

class _NonTechSlotsState extends State<NonTechSlots> {

  Widget buildFandomSlotCard(String eventText){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(eventText,
          style: GoogleFonts.mcLaren(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white
          ),
        ),
        bookSlotButton(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('NonTechSlots',
            style: GoogleFonts.mcLaren(fontSize: 30,fontWeight: FontWeight.bold),
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
          child: Column(
            children: <Widget>[

              BuildSlotCard(Colors.amber, 'Dextrous'),
              SizedBox(height: 8,),


              BuildSlotCard(Colors.green, 'Photoshop Royale'),
              SizedBox(height: 8,),


              BuildSlotCard(Colors.red, 'Quiz2Bid'),
              SizedBox(height: 8,),


              BuildSlotCard(Colors.pinkAccent, 'Insight'),
              SizedBox(height: 8,),

              BuildSlotCard(Colors.blue, 'Cerebro'),
              SizedBox(height: 8,),

              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.4,
                child: Card(
                  elevation: 3,
                  color: Colors.teal,
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
                        Text('Fandom Quiz',
                          style: GoogleFonts.mcLaren(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.amber
                          ),
                        ),

                        buildFandomSlotCard('GOT'),
                        buildFandomSlotCard('Friends'),
                        buildFandomSlotCard('Harry Potter'),
                        buildFandomSlotCard('Marvel'),
                        buildFandomSlotCard('DC'),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  PrevNextButton('Previous',TechSlots()),

                  RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text('Pay Now', style: TextStyle(
                      fontSize: 25, color: Colors.blue,),),
                    onPressed: () {

                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
