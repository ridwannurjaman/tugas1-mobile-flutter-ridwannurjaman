import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FormDate extends StatefulWidget {
  FormDate({Key? key}) : super(key: key);

  @override
  _FormDateState createState() => _FormDateState();
}

class _FormDateState extends State<FormDate> {
  String valueDate = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() => getDate());
            },
            child: Text('Date Picker'),
          ),
          Text('Date :' + valueDate)
        ],
      ),
    );
  }

  void getDate() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1999),
            lastDate: DateTime(2050))
        .then((value) {
      setState(() {
        DateFormat formatter = DateFormat('dd MMMM yyyy');
        String formatted = formatter.format(value!);
        valueDate = formatted;
      });
    });
  }
}
