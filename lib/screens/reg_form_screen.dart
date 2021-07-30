import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pulzion_reg_app/screens/tech_events_screen.dart';

class FormScreen extends StatefulWidget {
  FormScreen({Key key}) : super(key: key);

  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  String _name1;
  String _emailId;
  String _phoneNo;
  String _clgName;
  int _year = -1;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _handleRadioValueChange1(int value) {
    setState(() {
      _year = value;

      switch (_year) {
        case 0:
          Fluttertoast.showToast(
              msg: 'FE selected', toastLength: Toast.LENGTH_SHORT);
          break;
        case 1:
          Fluttertoast.showToast(
              msg: 'SE selected', toastLength: Toast.LENGTH_SHORT);
          break;
        case 2:
          Fluttertoast.showToast(
              msg: 'TE selected', toastLength: Toast.LENGTH_SHORT);
          break;
        case 3:
          Fluttertoast.showToast(
              msg: 'BE selected', toastLength: Toast.LENGTH_SHORT);
          break;
      }
    });
  }

  Widget _buildName1() {
    return TextFormField(
        style: TextStyle(fontFamily: 'McLaren'),
        decoration: InputDecoration(labelText: 'Participant Name'),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Participant 1 name is required';
          }
          return null;
        },
        onSaved: (String value) {
          _name1 = value;
        });
  }

  Widget _buildEmail() {
    return TextFormField(
        style: TextStyle(fontFamily: 'McLaren'),
        decoration: InputDecoration(labelText: 'Email ID'),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Email Id is required';
          }

          if (!RegExp(
              r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
              .hasMatch(value)) {
            return 'Please enter a valid email Address';
          }

          return null;
        },
        onSaved: (String value) {
          _emailId = value;
        });
  }

  Widget _buildPhoneNo() {
    return TextFormField(
      style: TextStyle(fontFamily: 'McLaren'),
      decoration: InputDecoration(labelText: 'Phone number'),
      keyboardType: TextInputType.phone,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Phone number is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _phoneNo = value;
      },
    );
  }

  Widget _buildClgName() {
    return TextFormField(
        style: TextStyle(fontFamily: 'McLaren'),
        decoration: InputDecoration(labelText: 'College Name'),
        validator: (String value) {
          if (value.isEmpty) {
            return 'College Name is required';
          }
          return null;
        },
        onSaved: (String value) {
          _clgName = value;
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.grey[600],
          title: Center(
              child: Text(
                "Registration Form",
                style: TextStyle(
                  fontFamily: 'McLaren',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ))),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildName1(),
                SizedBox(height: 20),
                _buildEmail(),
                SizedBox(height: 20),
                _buildPhoneNo(),
                SizedBox(height: 20),
                _buildClgName(),
                SizedBox(height: 20),
                Column(children: <Widget>[
                  // Expanded(
                  //   child: ListView(
                  //       shrinkWrap: true,
                  //       padding: const EdgeInsets.all(20.0),
                  //       children: <Widget>[
                  Text(
                    "Year",
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      'FE',
                      style: TextStyle(
                        fontFamily: 'McLaren',
                      ),
                    ),
                    leading: Radio(
                      value: 0,
                      groupValue: _year,
                      onChanged: _handleRadioValueChange1,
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      'SE',
                      style: TextStyle(
                        fontFamily: 'McLaren',
                      ),
                    ),
                    leading: Radio(
                      value: 1,
                      groupValue: _year,
                      onChanged: _handleRadioValueChange1,
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      'TE',
                      style: TextStyle(
                        fontFamily: 'McLaren',
                      ),
                    ),
                    leading: Radio(
                      value: 2,
                      groupValue: _year,
                      onChanged: _handleRadioValueChange1,
                    ),
                  ),
                  ListTile(
                    title: const Text(
                      'BE',
                      style: TextStyle(
                        fontFamily: 'McLaren',
                      ),
                    ),
                    leading: Radio(
                      value: 3,
                      groupValue: _year,
                      onChanged: _handleRadioValueChange1,
                    ),
                  )
                  //       ]),
                  // )
                ]),
                SizedBox(height: 30),
                RaisedButton(
                  child: Text(
                    "Next",
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                  onPressed: () {
                    if (!_formKey.currentState.validate()) {
                      return;
                    }
                    Navigator.pushReplacement(context,MaterialPageRoute(builder: (BuildContext context) => TechEvent()));
                    _formKey.currentState.save();
                    print(_name1);
                    print(_emailId);
                    print(_phoneNo);
                    print(_clgName);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
