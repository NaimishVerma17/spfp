import 'package:flutter/material.dart';
import 'package:student_portal/utils/styles.dart';

class TimetablePage extends StatefulWidget {
  @override
  _TableExampleState createState() => _TableExampleState();
}

class _TableExampleState extends State<TimetablePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Table Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Table(
          defaultColumnWidth:
              FixedColumnWidth(MediaQuery.of(context).size.width / 6),
          border: TableBorder.all(
              color: Colors.black26, width: 1, style: BorderStyle.solid),
          children: [
            TableRow(children: [
              TableCell(child: Center(child: Text('Time/Day', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('MON', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('TUE', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('WED', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('THUR', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('FRI', style:Styles.subCellTextHead()))),
            ]),
            TableRow(children: [
              TableCell(child: Center(child: Text('8:30-9:20', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('RCS-303', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('RCS-301', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('RCS-352', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('RAS-301', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('RIT-E13', style:Styles.subCellTextHead()))),
            ]),
            TableRow(children: [
              TableCell(child: Center(child: Text('9:20-10:10', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('RCS-301', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('KNC-301', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('RCS-352(1A)', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('RCS-301', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('RCS-301', style:Styles.subCellTextHead()))),
            ]),
            TableRow(children: [
              TableCell(child: Center(child: Text('10:10-11', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('M. BREAK', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('BREAK', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('BREAK', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('M. BREAK', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('BREAK', style:Styles.subCellTextHead()))),
            ]),
            TableRow(children: [
              TableCell(child: Center(child: Text('11-11:50', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('RCS-302', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('RIT-E13', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('RUC-301', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('RUC-301', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('RIT-354', style:Styles.subCellTextHead()))),
            ]),
            TableRow(children: [
              TableCell(child: Center(child: Text('11:50-12:40', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('RCS-351', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('KCS-354', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('RCS-352', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('RIT-E13', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('RIT-354(1A)', style:Styles.subCellTextHead()))),
            ]),
            TableRow(children: [
              TableCell(child: Center(child: Text('12:40-1:30', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('RCS-351(2A)', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('KCS-354', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('RCS-301', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('RCS-303', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('RCS-302', style:Styles.subCellTextHead()))),
            ]),
            TableRow(children: [
              TableCell(child: Center(child: Text('1:30-2:20', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('L', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('U', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('N', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('C', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('H', style:Styles.subCellTextHead()))),
            ]),
            TableRow(children: [
              TableCell(child: Center(child: Text('2:20-3:10', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('RCS-352', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('RCS-352', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('KCS-354', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('KCS-301', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('KNC-301', style:Styles.subCellTextHead()))),
            ]),
            TableRow(children: [
              TableCell(child: Center(child: Text('3:10-4', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('RCS-352(1B)', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('RCS-352(2A)', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('KCS-354(2A)', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('KCS-301(2B)', style:Styles.subCellTextHead()))),
              TableCell(child: Center(child: Text('-', style:Styles.subCellTextHead()))),
            ]),
          ],
        ),
      ),
    );
  }
}