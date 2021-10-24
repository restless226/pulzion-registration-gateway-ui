import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulzion_reg_app/screens/tech_events_screen.dart';
import 'package:pulzion_reg_app/screens/tech_slots.dart';
import 'package:pulzion_reg_app/widgets/previous_and_next_button.dart';

class NonTechEvent extends StatefulWidget {
  @override
  _NonTechEventState createState() => _NonTechEventState();
}

class _NonTechEventState extends State<NonTechEvent> {
  // getter functions
  static get checkboxValue8 => false;

  static get checkboxValue9 => false;

  static get checkboxValue10 => false;

  static get checkboxValue11 => false;

  static get checkboxValue12 => false;

  static get checkboxValue13 => false;

  static get checkboxValue14 => false;

  static get checkboxValue15 => false;

  static get checkboxValue16 => false;

  static get checkboxValue17 => false;

  List<bool> nonTechList = [
    checkboxValue8,
    checkboxValue9,
    checkboxValue10,
    checkboxValue11,
    checkboxValue12,
    checkboxValue13,
    checkboxValue14,
    checkboxValue15,
    checkboxValue16,
    checkboxValue17
  ];

  bool pressAttention = false;

  void markAsSelected() {
    setState(() {
      pressAttention = !pressAttention;
    });
  }

  Widget buildCard(String eventText, String eventPrice, bool checkboxValue) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.13,
      child: Card(
        elevation: 4,
        color: pressAttention ? Colors.deepPurpleAccent : Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              topLeft: Radius.circular(10),
            ),
            side: BorderSide(width: 2.5, color: Colors.deepPurpleAccent)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 2, 20, 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    eventText,
                    style: GoogleFonts.mcLaren(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: pressAttention ? Colors.white : Colors.black,
                    ),
                  ),
                  Text(
                    eventPrice,
                    style: TextStyle(
                      fontSize: 20,
                      color: pressAttention ? Colors.white : Colors.black,
                    ),
                  ),
                ],
              ),
              RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  onPressed: () {
                    checkboxValue = !checkboxValue;
                    markAsSelected();
                  },
                  child: Text(
                    'Select',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.deepPurple,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
            child: Text(
          'Non-Technical Events',
          style: GoogleFonts.mcLaren(fontSize: 25, fontWeight: FontWeight.bold),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              buildCard('Dextrous', 'Rs 100', checkboxValue8),
              SizedBox(
                height: 4,
              ),
              buildCard('PhotoShop Royale', 'Rs 50', checkboxValue9),
              buildCard('Quiz2Bid', 'Rs 100', checkboxValue10),
              SizedBox(
                height: 4,
              ),
              buildCard('Insight', 'Rs 50', checkboxValue11),
              SizedBox(
                height: 4,
              ),
              buildCard('Cerebro', 'Rs 80', checkboxValue12),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.8,
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        topLeft: Radius.circular(10),
                      ),
                      side: BorderSide(
                          width: 2.5, color: Colors.deepPurpleAccent)),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Fandom Quiz',
                              style: GoogleFonts.mcLaren(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepPurple),
                            ),
                          ],
                        ),
                        buildCard('GOT', 'Rs 100', checkboxValue13),
                        buildCard('Friends', 'Rs 100', checkboxValue14),
                        buildCard('Harry Potter', 'Rs 80', checkboxValue15),
                        buildCard('Marvel', 'Rs 100', checkboxValue16),
                        buildCard('DC', 'Rs 100', checkboxValue17),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  PrevNextButton('Previous', TechEvent()),
                  PrevNextButton('Proceed', TechSlots()),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
