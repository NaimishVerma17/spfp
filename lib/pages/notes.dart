import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:student_portal/models/notes.model.dart';
import 'package:student_portal/utils/styles.dart';
import 'package:student_portal/widgets/custom_button.dart';

class NotesPage extends StatefulWidget {
  @override
  _NotesPageState createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  List<Note> notes = new List();
  String title;
  String text;
  final GlobalKey<FormState> _globalKey = new GlobalKey();

  void addNote() {
    this._globalKey.currentState.save();
    setState(() {
      notes.add(new Note(this.title, this.text));
    });
  }

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes', style: Styles.pageTitleText()),
        elevation: 3.0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Styles.primaryColor),
      ),
      body: Container(
        color: Styles.homeBackgroundColor,
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Column(
          children: <Widget>[
            Container(
              width: _width,
              padding: EdgeInsets.all(10.0),
              child: Form(
                key: _globalKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: Styles.getInputDecoration('Title'),
                      onSaved: (value) {
                        this.title = value;
                      },
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: Styles.getInputDecoration('Text'),
                      onSaved: (value) {
                        this.text = value;
                      },
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    CustomButton(text: 'Add', onClick: this.addNote)
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                child: ListView.builder(
                  itemCount: notes.length,
                  itemBuilder: (context, index) => GestureDetector(
                    child: Card(
                      elevation: 3.0,
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              this.notes[index].title,
                              style: Styles.titleText(),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              this.notes[index].text,
                              style: Styles.subTitleText(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

