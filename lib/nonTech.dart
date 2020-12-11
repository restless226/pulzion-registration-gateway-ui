import 'package:flutter/material.dart';
import 'package:pulzion_reg_app/Tech.dart';
import 'package:google_fonts/google_fonts.dart';

class nonTechEvent extends StatefulWidget {
  @override
  _nonTechEventState createState() => _nonTechEventState();
}

class _nonTechEventState extends State<nonTechEvent> {



  bool checkboxValue8=false;
  bool checkboxValue9=false;
  bool checkboxValue10=false;
  bool checkboxValue11=false;
  bool checkboxValue12=false;
  bool checkboxValue13=false;
  bool checkboxValue14=false;
  bool checkboxValue15=false;
  bool checkboxValue16=false;
  bool checkboxValue17=false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,

        appBar: AppBar(
        title: Center(child: Text('Non-Technical Events',
        style: GoogleFonts.mcLaren(fontSize: 30,fontWeight: FontWeight.bold),)),
    ),

    body: Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,

                  children: [
                    Text('Dextrous', style: GoogleFonts.mcLaren(fontSize: 25),),
                    SizedBox(width: 120,),
                    Text('(100/-)', style: TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),),
                    SizedBox(width: 20,),
                    Checkbox(
                      value: checkboxValue8,
                      onChanged: (bool value1) {
                        setState(() {
                          checkboxValue8 = value1;
                        });
                      },
                    )
                  ],
                ),

                Divider(height: 2,thickness: 2,color: Colors.grey,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('PhotoShop Royale', style: GoogleFonts.mcLaren(fontSize: 25), ),
                    SizedBox(width: 10,),
                    Text('(50/-)', style: TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),),
                    SizedBox(width: 25,),
                    Checkbox(
                      value: checkboxValue9,
                      onChanged: (bool value1) {
                        setState(() {
                          checkboxValue9 = value1;
                        });
                      },
                    )
                  ],
                ),

                Divider(height: 2,thickness: 2,color: Colors.grey,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Quiz2Bid', style: GoogleFonts.mcLaren(fontSize: 25),),
                    SizedBox(width: 120,),
                    Text('(100/-)', style: TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),),
                    SizedBox(width: 10,),
                    Checkbox(
                      value: checkboxValue10,
                      onChanged: (bool value1) {
                        setState(() {
                          checkboxValue10 = value1;
                        });
                      },
                    )
                  ],
                ),

                Divider(height: 2,thickness: 2,color: Colors.grey,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Insight', style:GoogleFonts.mcLaren(fontSize: 25),),
                    SizedBox(width: 150,),
                    Text('(50/-)', style: TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),),
                    SizedBox(width: 20,),
                    Checkbox(
                      value: checkboxValue11,
                      onChanged: (bool value1) {
                        setState(() {
                          checkboxValue11 = value1;
                        });
                      },
                    )
                  ],
                ),

                Divider(height: 2,thickness: 2,color: Colors.grey,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Cerebro', style:GoogleFonts.mcLaren(fontSize: 25),),
                    SizedBox(width: 130,),
                    Text('(80/-)', style: TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),),
                    SizedBox(width: 20,),
                    Checkbox(
                      value: checkboxValue12,
                      onChanged: (bool value1) {
                        setState(() {
                          checkboxValue12 = value1;
                        });
                      },
                    )
                  ],
                ),

                Divider(height: 5,thickness: 2,color: Colors.grey,),

                Row(
                  children: [
                    Text('Fandom Quiz',style:
                      GoogleFonts.mcLaren(
                        fontWeight: FontWeight.bold,fontSize: 25,
                          color: Colors.blue
                      )
                    ),
                  ],
                ),


                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('GOT', style: GoogleFonts.mcLaren(fontSize: 25),),
                    SizedBox(width: 180,),
                    Text('(80/-)', style: TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),),
                    SizedBox(width: 20,),
                    Checkbox(
                      value: checkboxValue13,
                      onChanged: (bool value1) {
                        setState(() {
                          checkboxValue13 = value1;
                        });
                      },
                    )
                  ],
                ),




                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Friends', style: GoogleFonts.mcLaren(fontSize: 25),),
                    SizedBox(width: 140,),
                    Text('(100/-)', style: TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),),
                    SizedBox(width: 10,),
                    Checkbox(
                      value: checkboxValue14,
                      onChanged: (bool value1) {
                        setState(() {
                          checkboxValue14 = value1;
                        });
                      },
                    )
                  ],
                ),






                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Harry Potter', style: GoogleFonts.mcLaren(fontSize: 25),),
                    SizedBox(width: 70,),
                    Text('(80/-)', style: TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),),
                    SizedBox(width: 25,),
                    Checkbox(
                      value: checkboxValue15,
                      onChanged: (bool value1) {
                        setState(() {
                          checkboxValue15 = value1;
                        });
                      },
                    )
                  ],
                ),




                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Marvel', style:GoogleFonts.mcLaren(fontSize: 25),),
                    SizedBox(width: 150,),
                    Text('(100/-)', style: TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),),
                    SizedBox(width: 10,),
                    Checkbox(
                      value: checkboxValue16,
                      onChanged: (bool value1) {
                        setState(() {
                          checkboxValue16 = value1;
                        });
                      },
                    )
                  ],
                ),





                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(width: 20,),
                    Text('DC', style: GoogleFonts.mcLaren(fontSize: 25),),
                    SizedBox(width: 200,),
                    Text('(80/-)', style: TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),),
                    SizedBox(width: 10,),
                    Checkbox(
                      value: checkboxValue17,
                      onChanged: (bool value1) {
                        setState(() {
                          checkboxValue17 = value1;
                        });
                      },
                    )
                  ],
                ),

                Divider(height: 5,thickness: 2,color: Colors.grey,),

                SizedBox(height: 10,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text('Back', style: TextStyle(
                          fontSize: 25, color: Colors.blue,),),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context, MaterialPageRoute(builder: (
                            BuildContext context) => TechEvent()));
                      },
                    ),

                    RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text('Pay Now', style: TextStyle(
                          fontSize: 25, ),),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context, MaterialPageRoute(builder: (
                            BuildContext context) => TechEvent()));
                      },
                    ),
                  ],
                )

              ],
            ),
          ),
    );
  }
}
