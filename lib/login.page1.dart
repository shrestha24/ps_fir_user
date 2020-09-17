import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ps_fir_user/main.dart';

class UserRegistration extends StatefulWidget {
  UserRegistration({Key key, this.title}) : super(key: key);

  final String title;


  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<UserRegistration> {

  String state;
  var _states = ['sikkim', 'andra pradesh', 'odissa', 'others'];
  var _currentItemSelected1 = 'odissa';
  String city;
  var _cities = ['Bhubneshswar', 'Berhampur', 'Cuttuck', 'others'];
  var _currentItemSelected2 = 'Berhampur';
  String policestation;
  String otp;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 80.0,
              ),
              CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 50.0,
              ),
               Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                child: Divider(),
              ),
             Padding(
               padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
               child: TextField(
                 decoration: InputDecoration(
                   prefixIcon: Icon(Icons.location_city),
                   labelText: 'State',
                   enabledBorder: OutlineInputBorder(
                     borderSide: BorderSide(
                       color: Colors.blue
                     ),
                   ),
                   border: OutlineInputBorder(),
                 ),
                 onChanged: (value) {
                   setState(() {
                     state = value;
                   });
                 },
               ),
             ),

             DropdownButton<String>(

               items: _states.map((String dropDownStringItem) {
                 return DropdownMenuItem<String>(
                   value: dropDownStringItem,
                   child: Text(dropDownStringItem),
                 );
               }).toList(),

               onChanged: (String newValueSelected) {
                 setState(() {
                   this._currentItemSelected1 = newValueSelected;
                 });
               },

               value: _currentItemSelected1,

             ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.location_city),
                    labelText: 'City',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.blue
                      ),
                    ),
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    setState(() {
                      city = value;
                    });
                  },
                ),
              ),

              DropdownButton<String>(

                items: _cities.map((String dropDownStringItem) {
                  return DropdownMenuItem<String>(
                    value: dropDownStringItem,
                    child: Text(dropDownStringItem),
                  );
                }).toList(),

                onChanged: (String newValueSelected) {
                  setState(() {
                    this._currentItemSelected2 = newValueSelected;
                  });
                },

                value: _currentItemSelected2,

              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.business),
                    labelText: 'Police Station',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.blue
                      ),
                    ),
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    setState(() {
                      policestation = value;
                    });
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone_android),
                    labelText: 'OTP',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.blue
                      ),
                    ),
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    setState(() {
                      otp = value;
                    });
                  },
                ),
                ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: MaterialButton(
                  child: Text('Submit',
                  style: TextStyle(
                    color: Colors.white,
                  ),),
                  color: Colors.blue,
                  onPressed: () {
                    print(state);
                    print(city);
                    print(policestation);
                    print(otp);
                  },
                ),
              )
            ],
          ),

        ),
      ),
    );

  }
}