import 'dart:developer';

import 'package:flutter/material.dart';

class Scaffolding extends StatelessWidget {
  _tapButton() {
    print("Tapped");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.purpleAccent,
          title: Text("Scafold"),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.email), onPressed: () => print("email print")),
            IconButton(icon: Icon(Icons.access_alarm), onPressed: _tapButton),
            IconButton(
                icon: Icon(Icons.access_time_filled), onPressed: _tapButton),
            IconButton(
                icon: Icon(Icons.ac_unit_outlined), onPressed: _tapButton)
          ]),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlue,
          child: Icon(Icons.missed_video_call),
          onPressed: () => print("Hello")),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: "Fisrt"),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: " second"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: " Setting")
        ],
      ),
      backgroundColor: Colors.lightGreenAccent.shade200,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomButton(),
            InkWell(
              child: const Text(
                "Tapp me",
                style: TextStyle(fontSize: 25.5),
              ),
              onTap: () => log("tapped"),
            )
          ],
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      color: Colors.greenAccent,
      child: Center(
          child: Text(
        "Hello flutter",
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 25.4,
          fontStyle: FontStyle.italic,
        ),
      )),
    );
    // return Center(
    //   child: Text("Hello flut",textDirection: TextDirection.ltr,),
    // );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        const snackBar = SnackBar(
          content: Text("Tapp me here"),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.purple,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Text("button"),
      ),
    );
  }
}
