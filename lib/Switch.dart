import 'package:flutter/material.dart';
class SwitchDemo extends StatefulWidget {
  const SwitchDemo({super.key});

  @override
  State<SwitchDemo> createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool _SwitchValue =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_SwitchValue ? ' Switch is ON':'Switch is OFF',
            style: const TextStyle(fontSize: 20),),
            const SizedBox(height: 20,),
            Switch(value: _SwitchValue,
             onChanged: (bool newValue){
              setState(() {
                _SwitchValue=newValue;
              });
             })
          ],
          
        ),
      ),
    );
  }
}