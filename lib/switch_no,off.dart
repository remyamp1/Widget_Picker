import 'package:flutter/material.dart';
class SwitchDemo extends StatefulWidget{
  @override
   _SwitchDemoState  createState()=> _SwitchDemoState();

  
}
class  _SwitchDemoState extends  State <SwitchDemo> {
  bool _Switchvalue =false;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_Switchvalue ? 'Switch is on': 'Switch is Off'),
            Switch(
              value: _Switchvalue,
               onChanged: (bool newValue){
              setState((){
                _Switchvalue=newValue;
              });
            })
          ],
        ),
      ),
    );

  }
  
}