import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    myApp(),
  );
}

class myApp extends StatefulWidget {
  const myApp({Key? key}) : super (key : key);

  @override
  State<StatefulWidget> createState() {
    return _myAppState();
  }
}

class _myAppState extends State<myApp> {
  late bool _loading;
  late double _progressVal;

  @override
  void initState() {
    _loading = false;
    _progressVal = 0.0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.indigo,
          appBar: AppBar(
            title: const Text('Loading'),
            centerTitle: true,
          ),
          body:   Center(
            child: Container(
              padding: const EdgeInsets.all(20),
              child: _loading
              ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LinearProgressIndicator(
                    value: _progressVal,
                  ),
                  SizedBox(height: 35),
                  Text(
                    '${(_progressVal * 100).round()}%',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 35),
                ],
              ) : const Text(
                'Press button to download',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              setState(() {
                _loading = !_loading;
                _updateProgress();
              });
            },
          ),
        )
    );
  }

  void _updateProgress() {
    const oneSec = Duration(seconds: 1);
    Timer.periodic(oneSec, (Timer t) {
      setState(() {
        _progressVal += 0.2;

        if (_progressVal.toStringAsFixed(1) == '1.0') {
          _loading = false;
          t.cancel();
          _progressVal = 0.0;
          return;
        }
      });
    });
  }
}