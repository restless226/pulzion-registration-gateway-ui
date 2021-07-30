import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class SlotBookingWindow extends StatefulWidget {

  final Function addData;
  SlotBookingWindow(this.addData);

  @override
  _SlotBookingWindowState createState() => _SlotBookingWindowState();
}

class _SlotBookingWindowState extends State<SlotBookingWindow> {

  DateTime _selectedDate;
  TimeOfDay _selectedTime;

  void _submitData(){

    if(_selectedDate==null || _selectedTime==null){
      return;
    }

    widget.addData(_selectedDate,_selectedTime);

    Navigator.of(context).pop();
  }

  void _presentDatePicker(){
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime.now(),
    ).then((pickedDate) {
      if(pickedDate==null){
        return;
      }
      setState(() {
        _selectedDate=pickedDate;
      });
    });
  }

  void _presentTimePicker(){
    showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),

    ).then((pickedTime) {
      if(pickedTime==null){
        return;
      }
      setState(() {
        _selectedTime=pickedTime;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(4),
            topRight: Radius.circular(4),
            bottomLeft: Radius.circular(4),
            topLeft: Radius.circular(4),
          ),
          side: BorderSide(width: 2.5, color: Colors.deepPurpleAccent)
      ),
      elevation: 5,
      child: Container(
        height: MediaQuery.of(context).size.height*0.25,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      'Choose Date',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.deepPurpleAccent,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    onPressed: _presentDatePicker,
                  ),

                  Text(
                    _selectedDate==Null
                        ? 'No Date Chosen'
                        : '${DateFormat.yMd().format(_selectedDate)}',
                    style: GoogleFonts.mcLaren(
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),

              SizedBox(height: 5,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      'Choose Time',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.deepPurpleAccent,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    onPressed: _presentTimePicker,
                  ),

                  Text(
                    _selectedDate==Null
                        ? 'No Date Chosen'
                        :'${DateFormat.H().format(DateTime(_selectedTime.hour, _selectedTime.minute))}',
                    style: GoogleFonts.mcLaren(
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),

              SizedBox(height: 8,),

              Center(
                child: RaisedButton(
                  padding: EdgeInsets.all(8),
                  color: Colors.deepPurpleAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                      'Confirm',
                      style: GoogleFonts.mcLaren(
                          fontSize: 25,
                          color: Colors.white
                      ),
                  ),
                  onPressed:_submitData,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
