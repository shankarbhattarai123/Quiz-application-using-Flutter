import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _listIndex = 0;
  var questions = [
    {
      'questionText': 'UNIVAC is',
      'answers': [
        ' Universal Automatic Computer',
        'Universal Array Computer',
        ' Unique Automatic Computer',
        ' Unvalued Automatic Computer'
      ]
    },
    {
      'questionText': 'The basic operations performed by a computer are',
      'answers': [
        'Arithmetic operation',
        'Logical operation',
        'Storage and relative',
        'All the above'
      ]
    },
    {
      'questionText': 'The two major types of computer chips are',
      'answers': [
        'External memory chip',
        ' Primary memory chip',
        'Microprocessor chip',
        'Both b and c'
      ]
    },
    {
      'questionText': 'Which planet is known as the "Watery Planet" ?',
      'answers': [' Mercury', 'Earth', 'Mars', 'Jupiter']
    },
    {
      'questionText':
          'Microprocessors as switching devices are for which generation computers',
      'answers': [
        'First Generation',
        'Second Generation',
        'Third Generation',
        'Fourth Generation'
      ],
    },
    {
      'questionText':
          'Messenger satellite has been launched by NASA for the study of',
      'answers': [' Mercury', 'Venus', 'saturn', 'Jupiter']
    },
    {
      'questionText': 'Which of the following is not associated with the UNO?',
      'answers': [' ILo', 'WHO', 'ASEAN', 'all of the above']
    },
    {
      'questionText':
          'The chairmanship/presidency of the UN Security Council rotates among the Council Members',
      'answers': [
        'every 6 months',
        'every 3 months',
        'every Year',
        'every month'
      ]
    },
    {
      "questionText": "What is the scientific name of a butterfly?",
      "answers": ["Apis", "Coleoptera", "Formicidae", "Rhopalocera"],
    },
    {
      "questionText": "How hot is the surface of the sun?",
      "answers": ["1,233 K", "5,778 K", "12,130 K", "101,300 K"],
    },
    {
      "questionText": "Who are the actors in The Internship?",
      "answers": [
        "Ben Stiller, Jonah Hill",
        "Courteney Cox, Matt LeBlanc",
        "Kaley Cuoco, Jim Parsons",
        "Vince Vaughn, Owen Wilson"
      ],
    },
    {
      "questionText": "What is the capital of Spain?",
      "answers": ["Berlin", "Buenos Aires", "Madrid", "San Juan"],
    },
    {
      "questionText":
          "What are the school colors of the University of Texas at Austin?",
      "answers": [
        "Black, Red",
        "Blue, Orange",
        "White, Burnt Orange",
        "White, Old gold, Gold"
      ],
    },
    {
      "questionText": "What is 70 degrees Fahrenheit in Celsius?",
      "answers": ["18.8889", "20", "21.1111", "158"],
    },
    {
      "questionText": "When was Mahatma Gandhi born?",
      "answers": [
        "October 2, 1869",
        "December 15, 1872",
        "July 18, 1918",
        "January 15, 1929"
      ],
    },
    {
      "questionText": "How far is the moon from Earth?",
      "answers": [
        "7,918 miles (12,742 km)",
        "86,881 miles (139,822 km)",
        "238,400 miles (384,400 km)",
        "35,980,000 miles (57,910,000 km)"
      ],
    },
    {
      "questionText": "What is 65 times 52?",
      "answers": ["117", "3120", "3380", "3520"],
    },
    {
      "questionText": "How tall is Mount Everest?",
      "answers": [
        "6,683 ft (2,037 m)",
        "7,918 ft (2,413 m)",
        "19,341 ft (5,895 m)",
        "29,029 ft (8,847 m)"
      ],
    },
    {
      "questionText": "When did The Avengers come out?",
      "answers": ["May 2, 2008", "May 4, 2012", "May 3, 2013", "April 4, 2014"],
    },
    {
      "questionText": "What is 48,879 in hexidecimal?",
      "answers": ["0x18C1", "0xBEEF", "0xDEAD", "0x12D591"],
    }
  ];
  void _clickButton() {
    setState(() {
      _listIndex = _listIndex + 1;
    });
  }

  void _reset() {
    setState(() {
      _listIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Center(
          child: Scaffold(
            backgroundColor: Colors.indigo.shade200,
            appBar: AppBar(
              backgroundColor: Colors.green,
              title: Center(
                  child: Text(
                "QUIZ APP",
                style: TextStyle(fontSize: 25),
              )),
            ),
            body: _listIndex < questions.length
                ? Center(
                    child: Quiz(questions, _listIndex, _clickButton),
                  )
                : Center(
                    child: Result(_reset),
                  ),
          ),
        ));
  }
}
