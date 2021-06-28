import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: ReusableCard(color: Color(0xFF1D1E33)),
                ),
                Expanded(
                  flex: 1,
                  child: ReusableCard(color: Color(0xFF1D1E33)),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: ReusableCard(color: Color(0xFF1D1E33)),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: ReusableCard(color: Color(0xFF1D1E33)),
                ),
                Expanded(
                  flex: 1,
                  child: ReusableCard(color: Color(0xFF1D1E33)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {

  final Color color;

  ReusableCard({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color, //色はこの中で。
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}