import 'package:flutter/material.dart';

class FormTime extends StatefulWidget {
  FormTime({Key? key}) : super(key: key);

  @override
  _FormTimeState createState() => _FormTimeState();
}

class _FormTimeState extends State<FormTime> {
  String valueTime = "";
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
            child: Text('Time Picker'),
          ),
          Text('Time :' + valueTime)
        ],
      ),
    );
  }

  void getDate() {
    showTimePicker(context: context, initialTime: TimeOfDay.now())
        .then((value) {
      setState(() {
        valueTime = value!.hour.toString() + ":" + value.minute.toString();
      });
    });
  }
}
