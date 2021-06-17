import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/question.dart';
/*
void main() {
  //
  runApp(App());
}
*/

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  //_AppState createState() => _AppState();
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<App> {
  var response = 'Default body text';
  @override
  Widget build(BuildContext context) {
    print('rebuild widget');
    //
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'App Question',
            ),
          ),
          body: Container(
            //padding: EdgeInsets.all(5),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,

              children: [
                Question(response),
                Answer(
                    answerQuestion: answerQuestion('Answer 1'),
                    text: 'Answer 1'),

                Answer(
                    answerQuestion: answerQuestion('Answer 1'),
                    text: 'Answer 1'),
                Answer(
                    answerQuestion: answerQuestion('Answer 1'),
                    text: 'Answer 1'),
                // RaisedButton(onPressed: onPressed)
              ],
            ),
          )),
    );
  }

  void Function() answerQuestion(String answer) {
    void f() {
      setState(() {
        response = answer;
      });
      print(response);
    }

    return f;
  }
}

///
class Person {
  String name;
  int age;

  Person(String inputName, int inputAge)
      : name = inputName,
        age = inputAge;
}

class Person2 {
  String name;
  int age;

  Person2({required this.name, required this.age});
}

class Person3 {
  String name;
  int age;

  Person3(this.name, this.age);
  Person3.old(this.name) : this.age = 22;
}

var p2 = Person2(name: 'Foo', age: 69);
var p = Person('inputName', 22);
var p3 = Person3('fulano', 37);
var p32 = Person3.old('Other name');
