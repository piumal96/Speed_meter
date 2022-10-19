import 'package:flutter/material.dart';
import 'package:kdgaugeview/kdgaugeview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: Color(0xFFC41A3B),
          primaryColorLight: Color(0xFFBE0E6),
          accentColor: Color(0xFF1B1F32)),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  String title = "speed meter";

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Speed meter"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(children: <Widget>[
          Container(
            height: 600,
            width: 400,
            padding: EdgeInsets.all(16),
            child: KdGaugeView(
              maxSpeed: 180,
              minSpeed: 0,
              speed: 100,
              speedTextStyle: TextStyle(
                  color: Color.fromARGB(255, 213, 23, 23),
                  fontSize: 64.0,
                  fontWeight: FontWeight.bold),
              animate: true,
              duration: Duration(seconds: 5),
              subDivisionCircleColors: Color(0xFF1B1F32),
              divisionCircleColors: Color(0xFF1B1F32),
              fractionDigits: 0,
              baseGaugeColor: Color(0xFFFBE0E6),
              activeGaugeColor: Colors.red,
            ),
          )
        ]),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
