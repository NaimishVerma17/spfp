import 'package:flutter/material.dart';
import 'package:student_portal/models/reminder.model.dart';
import 'package:student_portal/utils/styles.dart';
import 'package:student_portal/widgets/custom_button.dart';
import 'dart:async';

class ReminderPage extends StatefulWidget {
  @override
  _ReminderPageState createState() => _ReminderPageState();
}

class _ReminderPageState extends State<ReminderPage> {
  final GlobalKey<FormState> _globalKey = new GlobalKey();
  List<Reminder> _rem = new List();

  String title;
  DateTime pickedDate;
  TimeOfDay time;

  @override
  void initState() {
    super.initState();
    pickedDate = DateTime.now();
    time = TimeOfDay.now();
  }

  Future<Null> _pickDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: this.pickedDate,
        firstDate: new DateTime(2020),
        lastDate: new DateTime(2022));
    if (picked != null) {
      setState(() {
        this.pickedDate = picked;
      });
    }
  }

  Future<Null> _pickTime(BuildContext context) async {
    final TimeOfDay picked =
        await showTimePicker(context: context, initialTime: this.time);
    if (picked != null) {
      setState(() {
        this.time = picked;
      });
    }
  }

  void _addRemainder() {
    this._globalKey.currentState.save();
    setState(() {
      _rem.add(new Reminder(title, time, pickedDate));
    });
  }

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Reminders', style: Styles.pageTitleText()),
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
                    Text( pickedDate.day.toString() +
                        '/' +
                        pickedDate.month.toString() +
                        '/' +
                        pickedDate.year.toString(),),
                    SizedBox(height: 10.0),
                    RaisedButton(
                      child: Text('Pick date'),
                      onPressed: () {
                        this._pickDate(context);
                      },
                    ),
                    Text(time.hour.toString() +
                        ':' +
                        time.minute.toString(),),
                    SizedBox(height: 10.0),
                    RaisedButton(
                      child: Text('Pick time'),
                      onPressed: () {
                        this._pickTime(context);
                      },
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    CustomButton(text: 'Add', onClick: this._addRemainder)
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                child: ListView.builder(
                  itemCount: _rem.length,
                  itemBuilder: (context, index) => GestureDetector(
                    child: Card(
                      elevation: 3.0,
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              _rem[index].title,
                              style: Styles.titleText(),
                            ),
                            SizedBox(
                              height: 6.0,
                            ),
                            Text(
                              _rem[index].date.day.toString() +
                                  '/' +
                                  _rem[index].date.month.toString() +
                                  '/' +
                                  _rem[index].date.year.toString(),
                              style: Styles.subHeadingText(),
                            ),
                            SizedBox(
                              height: 6.0,
                            ),
                            Text(
                              _rem[index].time.hour.toString() +
                                  ':' +
                                  _rem[index].time.minute.toString(),
                              style: Styles.subHeadingText(),
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
