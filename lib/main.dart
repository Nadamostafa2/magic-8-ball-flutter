import 'dart:math';
import 'package:flutter/material.dart';

void main() { runApp(
      MaterialApp(
        home:ballpage()
    )
);
}

class ballpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(backgroundColor: Colors.blue[800],
        title:Center(child: Text('ASK ME ANYTHING'),
        ),
      ),
      body: ball()
    );
  }
}
class ball extends StatefulWidget {
  @override
  _ballState createState() => _ballState();
}

class _ballState extends State<ball> {
  @override
  int counter=1;
  Widget build(BuildContext context) {

    return Center(child: FlatButton(
      onPressed: (){ setState(() {
        counter=Random().nextInt(5)+1;
        print ('presed');
        print (counter);
      });
      },
      child: Image.asset('images/ball$counter.png'),
    ),
    );
  }
}

