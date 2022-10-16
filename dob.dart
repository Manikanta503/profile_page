import 'package:flutter/material.dart';
// import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class DateOfBirth extends StatefulWidget {
  @override
  State<DateOfBirth> createState() => _DateOfBirthState();
}

class _DateOfBirthState extends State<DateOfBirth> {
  final TextEditingController _date = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(9, 9, 9, 0),
      child: Card(
        elevation: 9,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: const Color.fromARGB(255, 233, 190, 190),
        child: TextField(
          controller: _date,
          decoration: const InputDecoration(
            labelText: "DOB",
            labelStyle: TextStyle(fontSize: 24, color: Colors.lightBlue),
          ),
          onTap: () async {
            DateTime? pickeddate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(1990),
                lastDate: DateTime(2050));

            if (pickeddate != null) {
              setState(() {
                _date.text = DateFormat.yMd().format(pickeddate);
              });
            }
          },
        ),
      ),
    );
  }
}
