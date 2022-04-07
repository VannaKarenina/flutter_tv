import 'package:flutter/material.dart';

void main() {
  runApp(
      Stack(
        textDirection: TextDirection.ltr,
        alignment: Alignment.bottomLeft,
        children: [
          Positioned(
            width: 300,
            height: 50,
            top: 920,
            child: Container(
              alignment: Alignment.center,
              color: Colors.red,
              child: const Text(
                'Красное',
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Positioned(
            width: 300,
            height: 50,
            top: 870,
            left: 100,
            child: Container(
              alignment: Alignment.center,
              color: Colors.red,
              child: const Text(
                'Красное',
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Positioned(
            width: 300,
            height: 50,
            top: 820,
            left: 200,
            child: Container(
              alignment: Alignment.center,
              color: Colors.blue,
              child: const Text(
                'Красное',
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Positioned(
            width: 300,
            height: 50,
            top: 750,
            left: 300,
            child: Container(
              alignment: Alignment.center,
              color: Colors.green,
              child: const Text(
                'Красное',
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          )
        ],
      )
  );
}