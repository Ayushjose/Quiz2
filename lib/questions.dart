import 'package:flutter/material.dart';

class Questions extends StatefulWidget {
  const Questions({Key? key}) : super(key: key);

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(300.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 100,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Text(
                    'Question1',
                    style: TextStyle(
                        color: Colors.amber, fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 70,
                width: double.infinity,
                child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.lightGreenAccent),
                    onPressed: null,
                    child: Text(
                      'Yes',
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 70,
                width: double.infinity,
                child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.redAccent),
                    onPressed: null,
                    child: Text(
                      'No',
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Container(
                height: 20,
                width: 50,
                decoration: BoxDecoration(color: Colors.blueGrey),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                ),
              )
            ],
          ),
        ),

      ),
    );
  }
}
