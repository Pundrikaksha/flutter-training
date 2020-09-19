import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Xylophone(),
      ),
    );
  }
}

class Xylophone extends StatefulWidget {
  @override
  _XylophoneState createState() => _XylophoneState();
}

void playSound(int num) {
  final player = AudioCache();
  player.play('note$num.wav');
}

class _XylophoneState extends State<Xylophone> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          NoteKey(
            color: Colors.red,
            noteKeyNumber: 1,
          ),
          NoteKey(
            color: Colors.orange,
            noteKeyNumber: 2,
          ),
          NoteKey(
            color: Colors.yellow,
            noteKeyNumber: 3,
          ),
          NoteKey(
            color: Colors.green,
            noteKeyNumber: 4,
          ),
          NoteKey(
            color: Colors.blue,
            noteKeyNumber: 5,
          ),
          NoteKey(
            color: Colors.indigo,
            noteKeyNumber: 6,
          ),
          NoteKey(
            color: Colors.deepPurple,
            noteKeyNumber: 7,
          ),
        ],
      ),
    );
  }
}

class NoteKey extends StatelessWidget {
  const NoteKey({
    Key key,
    @required this.color,
    @required this.noteKeyNumber,
  }) : super(key: key);

  final Color color;
  final int noteKeyNumber;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(noteKeyNumber);
          print(noteKeyNumber);
        },
      ),
    );
  }
}
