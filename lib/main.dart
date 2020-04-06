import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:module_four/transantion.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'my app', home: MyHomePage(), debugShowCheckedModeBanner: false);
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transantion> transantions = [
    Transantion(
        id: '15455',
        title: 'the darkness',
        amount: 15.28,
        date: DateTime.now()),
    Transantion(
        id: '15456',
        title: 'the fifty shadow of gray',
        amount: 25.28,
        date: DateTime.now()),
  ];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter application'),
    
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch ,
        children: <Widget>[
          Card(
            child: Container(
              child: Text('chart!'),
              width: double.infinity,
            ),
            elevation: 5,
          ),

          Card(
            elevation: 5,
            child: Container(
              
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
          
              children: <Widget>[
                TextField(decoration: InputDecoration(labelText: 'title'),),
                TextField(decoration: InputDecoration(labelText: 'Amount'),),
                FlatButton(child: Text('Add transation'), onPressed: (){},textColor: Colors.purple,)

              ],
          ),
            ),),

         
          Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: transantions.map((e) {
                return Card(
                  child: Row(
                  
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.purple, width: 2)),
                        padding: EdgeInsets.all(10),
                        child: Column(children: <Widget>[
                          Text(
                            '\$${e.amount}',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.purple),
                          ),
                        ]),
                      ),
                      Container(
                        child: Column(children: <Widget>[
                          Text(
                            e.title,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            DateFormat().format(e.date),
                            style: TextStyle(color: Colors.grey),
                          ),
                        ]),
                      )
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        
        ],
      ),

    );
  }
}
