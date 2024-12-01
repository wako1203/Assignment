import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            "I Am Rich",
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
        ),
        body: const Center(
          child: Image(
            image: AssetImage('assets/diamond.png'),
          ),
        ),
      ),
    ),
  );
}
