import 'package:flutter/material.dart';

void main() {
  runApp(Center(
        child: Stack(
          alignment: Alignment.center,
            children: [
              Container(
                width: 400,
                height: 400,
                color: Colors.red,
              ),
              Container(
                width: 300,
                height: 300,
                color: Colors.green,
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.blue,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.black,
              )
            ],
        ),
  ));
}
