import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import './quiz.dart';
import './result.dart';

class FindSymptomsWidget extends StatefulWidget {
  const FindSymptomsWidget({Key key}) : super(key: key);

  @override
  _FindSymptomsWidgetState createState() => _FindSymptomsWidgetState();
}

class _FindSymptomsWidgetState extends State<FindSymptomsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _questions = const [
    {
      'questionText': 'How often is your knee painful?',
      'answers': [
        {'text': 'Never', 'score': 0},
        {'text': 'Monthly', 'score': 1},
        {'text': 'Weekly', 'score': 2},
        {'text': 'Daily', 'score': 3},
        {'text': 'Always', 'score': 4},
      ],
    },
    {
      'questionText':
          'What degree of pain have you experienced the last week when twisting/pivoting on your knee?',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
        {'text': 'Extreme', 'score': 4},
      ],
    },
    {
      'questionText':
          'What degree of pain have you experienced the last week when Straightening knee fully',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
        {'text': 'Extreme', 'score': 4},
      ],
    },
    {
      'questionText':
          'What degree of pain have you experienced the last week when Bending Knees fully',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
        {'text': 'Extreme', 'score': 4},
      ],
    },
    {
      'questionText':
          'What degree of pain have you experienced the last week when walking on flat surface',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
        {'text': 'Extreme', 'score': 4},
      ],
    },
    {
      'questionText':
          'What degree of pain have you experienced the last week when going up or down stairs',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
        {'text': 'Extreme', 'score': 4},
      ],
    },
    {
      'questionText':
          'What degree of pain have you experienced the last week at night while in bed',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
        {'text': 'Extreme', 'score': 4},
      ],
    },
    {
      'questionText':
          'What degree of pain have you experienced the last week sitting or lying',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
        {'text': 'Extreme', 'score': 4},
      ],
    },
    {
      'questionText':
          'What degree of pain have you experienced the last week when standing upright',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
        {'text': 'Extreme', 'score': 4},
      ],
    },
    {
      'questionText':
          'How severe is your knee stiffness after first wakening in the morning?',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
        {'text': 'Extreme', 'score': 4},
      ],
    },
    {
      'questionText':
          'How severe is your knee stiffness after sitting, lying, or resting later in the day?',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
        {'text': 'Extreme', 'score': 4},
      ],
    },
    {
      'questionText': 'Do you have swelling in your knee?',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
        {'text': 'Extreme', 'score': 4},
      ],
    },
    {
      'questionText':
          'Do you feel grinding, hear clicking or any other type of noise when your knee moves?',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
        {'text': 'Extreme', 'score': 4},
      ],
    },
    {
      'questionText': 'Does your knee catch or hang up when moving?',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
        {'text': 'Extreme', 'score': 4},
      ],
    },
    {
      'questionText': 'Can you straighten your knee fully? ',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
        {'text': 'Extreme', 'score': 4},
      ],
    },
    {
      'questionText': 'Can you bend your knee fully? ',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
        {'text': 'Extreme', 'score': 4},
      ],
    },
    {
      'questionText':
          'What difficulty have you experienced the last week descending',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
        {'text': 'Extreme', 'score': 4},
      ],
    },
    {
      'questionText':
          'What difficulty have you experienced the last week ascending stairs',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
        {'text': 'Extreme', 'score': 4},
      ],
    },
    {
      'questionText':
          'What difficulty have you experienced the last week rise from sitting',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
        {'text': 'Extreme', 'score': 4},
      ],
    },
    {
      'questionText':
          'What difficulty have you experienced the last week standing',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
        {'text': 'Extreme', 'score': 4},
      ],
    },
    {
      'questionText':
          'What difficulty have you experienced the last week bending to floor/picking up an object',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
        {'text': 'Extreme', 'score': 4},
      ],
    },
    {
      'questionText':
          'What difficulty have you experienced the last week walking on flat surface',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
        {'text': 'Extreme', 'score': 4},
      ],
    },
    {
      'questionText':
          'What difficulty have you experienced the last week getting in/out from the car',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
        {'text': 'Extreme', 'score': 4},
      ],
    },
    {
      'questionText':
          'What difficulty have you experienced the last week going shopping',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
        {'text': 'Extreme', 'score': 4},
      ],
    },
    {
      'questionText':
          'What difficulty have you experienced the last week putting on socks',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
        {'text': 'Extreme', 'score': 4},
      ],
    },
    {
      'questionText':
          'What difficulty have you experienced the last week raising from bed',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
        {'text': 'Extreme', 'score': 4},
      ],
    },
    {
      'questionText':
          'What difficulty have you experienced the last week taking off socks',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
        {'text': 'Extreme', 'score': 4},
      ],
    },
    {
      'questionText':
          'What difficulty have you experienced the last week turning over in bed to change position',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
        {'text': 'Extreme', 'score': 4},
      ],
    },
    {
      'questionText':
          'What difficulty have you experienced the last week getting in/out of bath',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
        {'text': 'Extreme', 'score': 4},
      ],
    },
    {
      'questionText':
          'What difficulty have you experienced the last week sitting',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
        {'text': 'Extreme', 'score': 4},
      ],
    },
    {
      'questionText':
          'What difficulty have you experienced the last week getting on/off toilet',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
        {'text': 'Extreme', 'score': 4},
      ],
    },
    {
      'questionText':
          'What difficulty have you experienced the last week heavy domestic duties (shoveling, scrubbing floors, etc)',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
        {'text': 'Extreme', 'score': 4},
      ],
    },
    {
      'questionText':
          'What difficulty have you experienced the last week light domestic duties (cooking, dusting, etc)',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
        {'text': 'Extreme', 'score': 4},
      ],
    },
    {
      'questionText':
          'What difficulty have you experienced the last week squatting',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
        {'text': 'Extreme', 'score': 4},
      ],
    },
    {
      'questionText':
          'What difficulty have you experienced the last week running',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
        {'text': 'Extreme', 'score': 4},
      ],
    },
    {
      'questionText':
          'What difficulty have you experienced the last week jumping',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
        {'text': 'Extreme', 'score': 4},
      ],
    },
    {
      'questionText':
          'What difficulty have you experienced the last week tuning/twisting on your injured knee',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
        {'text': 'Extreme', 'score': 4},
      ],
    },
    {
      'questionText':
          'What difficulty have you experienced the last week kneeling',
      'answers': [
        {'text': 'None', 'score': 0},
        {'text': 'Mild', 'score': 1},
        {'text': 'Moderate', 'score': 2},
        {'text': 'Severe', 'score': 3},
        {'text': 'Extreme', 'score': 4},
      ],
    },
    {
      'questionText': 'How often are you aware of your knee problems?',
      'answers': [
        {'text': 'Never', 'score': 0},
        {'text': 'Monthly', 'score': 1},
        {'text': 'Weekly', 'score': 2},
        {'text': 'Daily', 'score': 3},
        {'text': 'Always', 'score': 4},
      ],
    },
    {
      'questionText':
          'Have you modified your lifestyle to avoid potentially damaging activities to your knee?',
      'answers': [
        {'text': 'Never', 'score': 0},
        {'text': 'Monthly', 'score': 1},
        {'text': 'Weekly', 'score': 2},
        {'text': 'Daily', 'score': 3},
        {'text': 'Always', 'score': 4},
      ],
    },
    {
      'questionText':
          'How troubled are you with lack of confidence in your knee?',
      'answers': [
        {'text': 'Never', 'score': 0},
        {'text': 'Monthly', 'score': 1},
        {'text': 'Weekly', 'score': 2},
        {'text': 'Daily', 'score': 3},
        {'text': 'Always', 'score': 4},
      ],
    },
    {
      'questionText':
          'In general, how much difficulty do you have with your knee?',
      'answers': [
        {'text': 'Never', 'score': 0},
        {'text': 'Monthly', 'score': 1},
        {'text': 'Weekly', 'score': 2},
        {'text': 'Daily', 'score': 3},
        {'text': 'Always', 'score': 4},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).background,
        automaticallyImplyLeading: false,
        title: Text(
          'Symptoms',
          style: FlutterFlowTheme.of(context).title1,
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
            child: SvgPicture.asset(
              'assets/images/OSTEODOC_(3).svg',
              width: 120,
              height: 40,
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).background,
      body: _questionIndex < _questions.length
          ? Quiz(
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
              questions: _questions,
            )
          : Result(_totalScore, _resetQuiz),
    );
  }
}
