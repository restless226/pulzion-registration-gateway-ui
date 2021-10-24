import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulzion_reg_app/screens/nonTech_events_screen.dart';
import 'package:pulzion_reg_app/screens/reg_form_screen.dart';
import 'package:pulzion_reg_app/widgets/previous_and_next_button.dart';

class TechEvent extends StatefulWidget {
  @override
  _TechEventState createState() => _TechEventState();
}

class _TechEventState extends State<TechEvent> {
  // getter functions
  static get checkboxValue1 => false;

  static get checkboxValue2 => false;

  static get checkboxValue3 => false;

  static get checkboxValue4 => false;

  static get checkboxValue5 => false;

  static get checkboxValue6 => false;

  static get checkboxValue7 => false;

  List<bool> techList = [
    checkboxValue1,
    checkboxValue2,
    checkboxValue3,
    checkboxValue4,
    checkboxValue5,
    checkboxValue6,
    checkboxValue7,
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
        color: pressAttention ? Colors.deepPurple : Colors.white,
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
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
          child: Text('Technical Events',
              style: GoogleFonts.mcLaren(
                  fontSize: 25, fontWeight: FontWeight.bold)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              buildCard('Code Buddy', 'Rs 100', checkboxValue1),
              SizedBox(
                height: 4,
              ),
              buildCard('Data Quest', 'Rs 150', checkboxValue2),
              SizedBox(
                height: 4,
              ),
              buildCard('Web-App Dev', 'Rs 100', checkboxValue3),
              SizedBox(
                height: 4,
              ),
              buildCard('ElectroQuest', 'Rs 100', checkboxValue4),
              SizedBox(
                height: 4,
              ),
              buildCard('Bug-Off', 'Rs 100', checkboxValue5),
              SizedBox(
                height: 4,
              ),
              buildCard('Just Coding', 'Rs 100', checkboxValue6),
              SizedBox(
                height: 4,
              ),
              buildCard('Recode It', 'Rs 100', checkboxValue7),
              SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  PrevNextButton('Previous', FormScreen()),
                  PrevNextButton('Next', NonTechEvent()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
