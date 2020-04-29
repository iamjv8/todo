import 'package:flutter/material.dart';

import './widgets/select_date.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primaryColor: Color.fromRGBO(56, 195, 183, 1),
        secondaryHeaderColor: Color.fromRGBO(69, 74, 83, 1),
        accentColor: Color.fromRGBO(165, 183, 182, 1),
        textTheme: TextTheme(
            headline: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w700,
              color: Color.fromRGBO(69, 74, 83, 1),
            ),
            subtitle: TextStyle(
              fontSize: 24,
              color: Color.fromRGBO(165, 183, 182, 1),
            )),
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Hello, Jayesh',
                  style: Theme.of(context).textTheme.headline,
                ),
              ),
              Expanded(child: SelectDate())
            ],
          ),
        ),
      ),
    );
  }
}
