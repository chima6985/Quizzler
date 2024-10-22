
import 'question.dart';

class QuizBrain {
    static  int _questionNumber = 0;

  static final List<Question> _questionBank = [
         Question(q:'Manchester united has won more Premier league titles than any other club', a:true),
         Question(q:'Chelsea was the first London club to win the Premier league', a:false),
         Question(q:'Liverpool won their first Premier league title in 2019-2020 season', a:true),
         Question(q:'The Premier League was founded in 1992', a: true),
         Question(q:'Arsène Wenger managed Arsenal for over 20 years.', a: true),
         Question(q:'Tottenham Hotspur won the Premier League in the 2016-2017 season.', a: false),
         Question(q:'Manchester City was the first club to reach 100 points in a Premier League season.', a:true), 
         Question(q:'Cristiano Ronaldo has never played in the Premier League.', a:false),
         Question(q:'Everton is one of the original founding members of the Premier League.', a:true),
         Question(q:'Cristiano Ronaldo is the GOAT of football', a:true),
         Question(q:'Quality sport education pays', a:true),
         Question(q:'The Premier League season consists of 34 matches per team.', a:false),       
         Question(q:'Mesii can play football better than Ronalod ', a:false),   
         Question(q:'Neymar is a good dribbler ', a:true), 
         Question(q:'Arsenal is the most decorated English Team', a:false),
         Question(q:'manchester united is the most decorated English Team', a:true), 
                          
];


void nextQuestion() {
if (_questionNumber < _questionBank.length  -1) {
  _questionNumber++;
}
}

 static String getQuestionText(int questionNumber) {
  return _questionBank[_questionNumber].q;
}

static  bool getQuestionAnswer(int questionNumber) {
  return _questionBank[_questionNumber].a;
}

static int  getQuestionNumber (){ 
return _questionNumber; 
}
   
bool  isFinished () {
   return  _questionNumber >= _questionBank.length - 1;
}

void reset() {
  _questionNumber = 0;
}

}



