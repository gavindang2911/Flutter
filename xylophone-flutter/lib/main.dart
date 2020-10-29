import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xylo phone',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Expanded buildKey(Color x, int songNumber) {
    return Expanded(
      child: FlatButton(
        color: x,
        onPressed: () {
          playsound(songNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(Colors.blue, 1),
              buildKey(Colors.red, 2),
              buildKey(Colors.brown, 3),
              buildKey(Colors.yellow, 4),
              buildKey(Colors.green, 5),
              buildKey(Colors.pink, 6),
              buildKey(Colors.black, 7),
            ],
          ),
        ),
      ),
    );
  }

  void playsound(int index) {
    setState(() {
      final player1 = AudioCache();
      widget.title = 'Song number $index';
      player1.play('note$index.wav');
    });
  }
}
