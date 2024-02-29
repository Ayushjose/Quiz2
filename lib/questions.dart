import 'package:flutter/material.dart';
import 'package:quiz/qnfile.dart';

class Questions extends StatefulWidget {
  const Questions({Key? key}) : super(key: key);

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  List questionsList = [
    Quiz(qus: 'Noel have brain', ans: false),
    Quiz(qus: 'Noel is beutiful', ans: false),
    Quiz(qus: 'Noel is dumb', ans: true),
  ];
  int index = 0;
  String result = '';
  void nxtqs() {
    if (index < questionsList.length) {
      index++;
    }
  }

  void check(bool answer) {
    if (questionsList[index].ans == answer) {
      result = 'Correct Answer';
    }
    if (questionsList[index].ans != answer) {
      result = 'Wrong Answer';
    }++
    ;
  }

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
                    questionsList[index].qus,
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
                    onPressed: () {
                      setState(() {
                        check(true);
                        nxtqs();
                      });
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.lightGreenAccent),
                    child: Text(
                      'TRUE',
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
                    onPressed: () {
                      setState(() {
                        check(false);
                        nxtqs();
                      });
                    },
                    style:
                        TextButton.styleFrom(backgroundColor: Colors.redAccent),
                    child: Text(
                      'FALSE',
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Text(style: TextStyle(color: Colors.white54), result)
            ],
          ),
        ),
      ),
    );
  }
}
