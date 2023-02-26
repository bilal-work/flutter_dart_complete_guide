import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resestHandler;
  Result(this.resultScore, this.resestHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likelable!';
    } else if (resultScore <= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            // style:ButtonStyle(
            //   foregroundColor: MaterialStateProperty.all<Color>(Colors.red)
            // ),
            style:TextButton.styleFrom(
              primary: Colors.red,
              onSurface: Colors.yellow,
            ),
            child: Text('Restart Quiz!'),
            onPressed: resestHandler,
          )
        ],
      ),
    );
  }
}
