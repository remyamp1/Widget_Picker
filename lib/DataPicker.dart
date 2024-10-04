import 'package:flutter/material.dart';
class DataPickerDemo extends StatefulWidget {
  const DataPickerDemo({super.key});

  @override
  State<DataPickerDemo> createState() => _DataPickerDemoState();
}

class _DataPickerDemoState extends State<DataPickerDemo> {
  DateTime? SelectedDate;
  Future<void> _selectDate(BuildContext context) async{
    final DateTime? picked =await showDatePicker
    (context: context, 
   initialDate: DateTime.now(),
   firstDate: DateTime(2000),
   lastDate: DateTime(2100));
   if (picked != null && picked !=SelectedDate){
    setState(() {
      SelectedDate=picked;
    });
   }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 
        Text("Date Picker"),
      ),
      body: 
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              SelectedDate != null? 
              'Selected Date: ${SelectedDate!.day}/${SelectedDate!.month}/${SelectedDate!.year}'
              :'No Date Selected',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: ()=> _selectDate(context),
             child: const Text('Select Date'),)
          ],
        ),
      ),
    );
  }
}