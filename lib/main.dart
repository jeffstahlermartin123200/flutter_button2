import 'package:flutter/material.dart';

//export PATH="/usr/local/bin:...:/home/...flutter/bin:${PATH}"
//flutter emulators --launch Pixel_3_API_29

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {
  String _value = 'Hello world';
  void _onPressed(String value) {
    setState(() {
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.orange,
        title: new Text('App Name Here'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text(_value),
              new RaisedButton(
                //anonymous function
                onPressed: () => _onPressed('Hello Jeff'),
                child: Text('Click me'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
