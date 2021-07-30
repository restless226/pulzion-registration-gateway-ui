import 'package:flutter/material.dart';

class PrevNextButton extends StatelessWidget {

  final String buttonText;
  final Widget widget;

  PrevNextButton(this.buttonText,this.widget);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      splashColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
      color: Colors.deepPurple,
      child: Text(buttonText, style: TextStyle(
        fontSize: 25, color: Colors.white,),),
      onPressed: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (
            BuildContext context) => widget));
      },
    );
  }
}
