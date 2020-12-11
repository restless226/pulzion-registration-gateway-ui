import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pulzion_reg_app/nonTech.dart';


class TechEvent extends StatefulWidget {
  @override
  _TechEventState createState() => _TechEventState();
}

class _TechEventState extends State<TechEvent> {

  bool checkboxValue1=false;
  bool checkboxValue2=false;
  bool checkboxValue3=false;
  bool checkboxValue4=false;
  bool checkboxValue5=false;
  bool checkboxValue6=false;
  bool checkboxValue7=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: Center(child: Text('Technical Events',
          style: GoogleFonts.mcLaren(fontSize: 30,fontWeight: FontWeight.bold)),),
      ),

      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Code Buddy',style: GoogleFonts.mcLaren(fontSize: 25),),
                  SizedBox(width: 20,),
                  Text('(100/-)',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),),
                  SizedBox(width: 20,),
                  Checkbox(
                    value: checkboxValue1,
                    onChanged: (bool value1) {
                      setState(() {
                        checkboxValue1=value1;
                      });
                    },
                  )
                ],
              ),

            Divider(height: 8,thickness: 2,color: Colors.grey,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Data Quest',style: GoogleFonts.mcLaren(fontSize: 25),),
                SizedBox(width: 40,),
                Text('(150/-)',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),),
                SizedBox(width: 20,),
                Checkbox(
                  value: checkboxValue2,
                  onChanged: (bool value1) {
                    setState(() {
                      checkboxValue2=value1;
                    });
                  },
                )
              ],
            ),

            Divider(height: 8,thickness: 2,color: Colors.grey,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Web-App Dev',style: GoogleFonts.mcLaren(fontSize: 25),),
                SizedBox(width: 20,),
                Text('(100/-)',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),),
                SizedBox(width: 20,),
                Checkbox(
                  value: checkboxValue3,
                  onChanged: (bool value1) {
                    setState(() {
                      checkboxValue3=value1;
                    });
                  },
                )
              ],
            ),

            Divider(height: 8,thickness: 2,color: Colors.grey,),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('ElectroQuest',style: GoogleFonts.mcLaren(fontSize: 25),),
                SizedBox(width: 30,),
                Text('(100/-)',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),),
                SizedBox(width: 20,),
                Checkbox(
                  value: checkboxValue4,
                  onChanged: (bool value1) {
                    setState(() {
                      checkboxValue4=value1;
                    });
                  },
                )
              ],
            ),

            Divider(height: 10,thickness: 2,color: Colors.grey,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Bug - Off',style: GoogleFonts.mcLaren(fontSize: 25),),
                SizedBox(width: 80,),
                Text('(100/-)',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),),
                SizedBox(width: 20,),
                Checkbox(
                  value: checkboxValue5,
                  onChanged: (bool value1) {
                    setState(() {
                      checkboxValue5=value1;
                    });
                  },
                )
              ],
            ),

            Divider(height: 8,thickness: 2,color: Colors.grey,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Just Coding',style: GoogleFonts.mcLaren(fontSize: 25),),
                SizedBox(width: 50,),
                Text('(100/-)',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),),
                SizedBox(width: 20,),
                Checkbox(
                  value: checkboxValue6,
                  onChanged: (bool value1) {
                    setState(() {
                      checkboxValue6=value1;
                    });
                  },
                )
              ],
            ),

            Divider(height: 8,thickness: 2,color: Colors.grey,),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Recode It',style: GoogleFonts.mcLaren(fontSize: 25),),
                SizedBox(width: 70,),
                Text('(80/-)',style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),),
                SizedBox(width: 30,),
                Checkbox(
                  value: checkboxValue7,
                  onChanged: (bool value1) {
                    setState(() {
                      checkboxValue7=value1;
                    });
                  },
                )
              ],
            ),

            Divider(height: 8,thickness: 2,color: Colors.grey,),

            SizedBox(height: 5,),

            Center(
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                ),

                child: Text('Next',style: TextStyle(fontSize: 25,color: Colors.blue),),
                onPressed: (){
                  Navigator.pushReplacement(context,MaterialPageRoute(builder: (BuildContext context) => nonTechEvent()));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}