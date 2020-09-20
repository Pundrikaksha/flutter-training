//_ is used for make private class for encapsulation
class Question {
  String Q;
  bool answer;
  Question(String s, bool Q) {
    this.Q = s;
    answer = Q;
  }
}

class QuestionBank {
  List<Question> _q = [
    Question('Goldfish only have a memory of three seconds', false),
    Question('An octopus has three hearts', true),
    Question('The Great Wall of China is visible from space', false)
  ];
  String getQ(int qno) {
    return _q[qno].Q;
  }

  int getLength() {
    return _q.length;
  }

  bool getQCheck(int qno) {
    return _q[qno].answer;
  }
}
