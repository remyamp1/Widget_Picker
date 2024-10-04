import 'package:flutter/material.dart';
class TimePicker extends StatefulWidget {
  const TimePicker({super.key});

  @override
  State<TimePicker> createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  late TimeOfDay selectedTime =TimeOfDay.now();

  Future<void> _seletedTime (BuildContext context) async{
    final TimeOfDay? picked = await showTimePicker(
      context: context,
     initialTime: selectedTime,
     );
     if (picked != null && picked != selectedTime){
      setState(() {
        selectedTime=picked;
      });
     }
  
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 
        Text("Time Picker"),
      ),
      body: 
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('selected Tim:${selectedTime.format(context)}'),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: () => _seletedTime(context),
             child: const Text('Select Time'))
          ],
        ),
      ),
    );
  }
}