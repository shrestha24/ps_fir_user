import 'package:ps_fir_user/login.page1.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class AnonymousDetails extends StatefulWidget {
  AnonymousDetails({Key key, this.title}) : super(key: key);

  final String title;

  _AnonymousCaseDetailsPage createState() => _AnonymousCaseDetailsPage();

}

class _AnonymousCaseDetailsPage extends State<AnonymousDetails> {

  String titleCase;
  String description;
  String suspect;

  Widget build (BuildContext context) {
    return Scaffold (
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Case Type',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                        )
                    ),
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    setState(() {
                      titleCase = value;
                    });
                  },

                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Case Title',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                        )
                    ),
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    setState(() {
                      titleCase = value;
                    });
                  },

                ),
              ),


              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child: TextField(
                  minLines: 2,
                  maxLines: 10,
                  decoration: InputDecoration(
                    labelText: 'Case Description',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                        )
                    ),
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    setState(() {
                      description = value;
                    });
                  },

                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Evidence(if any photo/video/docx.etc)',
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                        )
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),

              ),

              RaisedButton(
                onPressed: () async{
              FilePickerResult result = await FilePicker.platform.pickFiles();

              if(result != null) {
              PlatformFile file = result.files.first;

              print(file.name);
              print(file.bytes);
              print(file.size);
              print(file.extension);
              print(file.path);
              }

              }
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
                child: MaterialButton(
                  child: Text('Submit',
                    style: TextStyle(
                      color: Colors.white,
                    ),),
                  color: Colors.blue,
                  onPressed: () {

                    print(titleCase);
                    print(description);
                    print(suspect);

                  },
                ),
              ),

            ],
          ),
        ),
      ),



      floatingActionButton: FloatingActionButton(
        elevation: 5.0,
        child: new Icon(Icons.chevron_right),
        backgroundColor: Colors.blue,
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => (UserRegistration())
          ));
        },
      ),
    );

  }

}