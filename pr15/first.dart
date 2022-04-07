import 'package:flutter/material.dart';

void main() {
  runApp(
    Container(
      color: Colors.white,
      child: const Align(
        alignment: Alignment(-0.5, 0.5),
        child: Text(
          'Очень интересный текст',
          textDirection: TextDirection.ltr,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.red,
            fontSize: 32,
            backgroundColor: Colors.black
          ),
        ),
      ),
    )
  );
}