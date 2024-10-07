import 'package:flutter/material.dart';
class SliderDemo extends StatefulWidget{
  @override

  _SliderDemoStata createState() => _SliderDemoStata();

}
class _SliderDemoStata extends State<SliderDemo>{
  double _SliderValue =20.0;
  @override
  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(
        title: Text("Slider Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Slider Value:${_SliderValue.toStringAsFixed(1)}",
            style: const TextStyle(fontSize: 18),),
            const SizedBox(height: 20),
            Slider(
              value: _SliderValue,
              min: 0,
              max: 100,
               onChanged:(double newvalue){
              setState(() {
                _SliderValue =newvalue;
              });
            })
          ],
        ),
      ),
    );
  }

}