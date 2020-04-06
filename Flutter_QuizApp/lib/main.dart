import 'package:flutter/material.dart';
import 'package:quizzler/questions.dart';
import 'questions.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scorekeeper = [];

  // List<String> questions = [
  // 'You can lead a cow down stairs but not up stairs.',
  //'Approximately one quarter of human bones are in the feet.',
  //'A slug\'s blood is green.',
  //];

  //Question q1 = Question(q:'You can lead a cow down stairs but not up stairs.' , a: false);

  //List<bool> answers = [
  //false,
  //true,
  //true,
  //];

  List<Question> quesbank = [
    Question(q: 'You can lead a cow down stairs but not up stairs.',a: false),
    Question(q: 'Approximately one quarter of human bones are in the feet.', a: true),
    Question(q: 'A slug\'s blood is green.', a:true),

    

  ];

  int quesnumber = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quesbank[quesnumber].questionText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                bool correctAnswer = quesbank[quesnumber].quesanswer;
                if (correctAnswer == true) {
                  print('user got it right');
                } else {
                  print('user got it wrong');
                }

                setState(() {
                  quesnumber++;
                });

                //The user picked true.
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                bool correctAnswer = quesbank[quesnumber].quesanswer;
                if (correctAnswer == false) {
                  print('user got it right');
                } else {
                  print('user got it wrong');
                }

                setState(() {
                  quesnumber++;
                });

                //The user picked false.
              },
            ),
          ),
        ),
        Row(
          children: scorekeeper,
        ),
      ],
    );
  }
}
