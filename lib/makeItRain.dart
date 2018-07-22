import 'package:flutter/material.dart';

class MakeItRain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MakeItRainState();
  }
}

class MakeItRainState extends State<MakeItRain> {


  int _moneyCounter = 0;
  void _rainMoney(){
    setState(() {
      _moneyCounter =_moneyCounter+200;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Lets Get Rich!!"),
        backgroundColor: Colors.lightGreen,
      ),
      backgroundColor: Colors.grey.shade400,
      body: new Column(
        children: <Widget>[
          new Center(
            child: new Text(
              "GET RICH!!!",
              style: new TextStyle(
                  color: Colors.green,
                  fontSize: 45.0,
                  fontWeight: FontWeight.w400),
            ),
          ),
          new Expanded(
            child: new Center(
              child: new Text(
                '\$$_moneyCounter',
                style: new TextStyle(
                    color:_moneyCounter>5000 ? Colors.red : Colors.blue,
                    fontSize: 60.0,
                    fontWeight: FontWeight.w800),
              ),
            ),
          ),
          new Expanded(
            child: new Center(
              child: new FlatButton(
                  color: Colors.green,
                  textColor:Colors.white ,
                  onPressed:_rainMoney,
                  child: new Text(
                    "Let it Rain!!",
                    style: new TextStyle(
                        fontSize: 25.0,
                    ),
                  )
              ),
            ),
          )
        ],
      ),
    );
  }
}
