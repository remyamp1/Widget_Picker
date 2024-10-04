import 'package:flutter/material.dart';
class Sliderexample extends StatefulWidget {
  const Sliderexample({super.key});

  @override
  State<Sliderexample> createState() => _SliderexampleState();
}

class _SliderexampleState extends State<Sliderexample> {
  List <String> toDoItems =[
    "Buy Groceries",
    "Walk the dog",
    "Complet homework",
    "Hello"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 
        Text("To-Do List"),
      ),
      body: ListView.builder(
        itemCount: toDoItems.length,
        itemBuilder: (context,index){
return Dismissible(
  key: Key(toDoItems[index]),
  direction: DismissDirection.endToStart,
  onDismissed: (direction) {
    setState(() {
      toDoItems.removeAt(index);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Item deleted'),
      )
    );
  }, 
  background:Container(
    color: Colors.red,
    alignment: Alignment.centerRight,
  
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Icon(Icons.delete,color: Colors.white,),
    

  ),
  child: ListTile(
    title: Text(toDoItems[index]),
  ),
   );

      }),
    );
  }
}