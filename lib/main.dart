import 'package:flutter/material.dart';
import 'package:kdgaugeview/kdgaugeview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Gauge Control Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title!),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 400,
              height: 400,
              padding: EdgeInsets.all(10),
              child: KdGaugeView(
                minSpeed: 0,
                maxSpeed: 100,
                speed: 100,
                animate: true,
                duration: Duration(seconds: 5),
                alertSpeedArray: [40, 80, 90],
                alertColorArray: [Colors.orange, Colors.indigo, Colors.red],
                unitOfMeasurement: "Mbps",
                gaugeWidth: 20,
                fractionDigits: 1,
              ),
            )
          ],
        ),
      ),
    );
  }
}
