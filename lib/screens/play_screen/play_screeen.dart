import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:piano_tiles/provider/note_state.dart';
import 'package:piano_tiles/screens/play_screen/widget/line_divider.dart';
import 'package:piano_tiles/model/note_model.dart';
import '../../provider/song_provider.dart';
import '../home_screen/line_widget.dart';

class PlayScreen extends StatefulWidget {
  const PlayScreen({super.key});

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen>
    with SingleTickerProviderStateMixin {
  List<NoteModel> notes = mission1;
  late AnimationController _animationController;
  int currentNoteIndex = 0;
  AudioPlayer player = AudioPlayer();

  int point = 0;
  bool isPlaying = true;
  bool hasStarted = false;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 400));
    _animationController.addStatusListener((status) {
      if (notes[currentNoteIndex].noteState != NoteState.TappedState) {
        //game over
      }
      if (status == AnimationStatus.completed && isPlaying) {
        if (currentNoteIndex == notes.length - 5) {
          //songFinished
        } else {
          setState(() {
            currentNoteIndex++;
          });
          _animationController.forward(from: 0);
        }
      }
    });
    _animationController.forward();
    super.initState();
  }

  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      children: [
        SizedBox(
          height: double.infinity,
          child: Image.asset(
            "assets/images/backgrounds.gif",
            fit: BoxFit.cover,
          ),
        ),
        Row(
          children: [
            drawLineWidget(0),
            const LineDivider(),
            drawLineWidget(1),
            const LineDivider(),
            drawLineWidget(2),
            const LineDivider(),
            drawLineWidget(3)
          ],
        ),
        _drawPoins()
      ],
    );
  }

  Widget drawLineWidget(int lineNumber) {
    return Expanded(
      child: LineWidget(
        lineNumber: lineNumber,
        currentNotes: notes.sublist(currentNoteIndex, currentNoteIndex + 5),
        animation: _animationController,
        onTileTap: (NoteModel note) {
          point == 0
              ? _notePlay(note)
              : () {
                  print(point);
                };
          setState(() {
            note.noteState = NoteState.TappedState;
            ++point;
          });
        },
      ),
    );
  }

  Widget _drawPoins() {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Text("$point",
              style: TextStyle(color: Colors.red, fontSize: 60))),
    );
  }

  void _notePlay(NoteModel note) {
    switch (note.line) {
      case 0:
        player.play(AssetSource('music/6.mp3'));
        return;
      case 1:
        player.play(AssetSource('music/6.mp3'));
        return;
      case 2:
        player.play(AssetSource('music/6.mp3'));
        return;
      case 3:
        player.play(AssetSource('music/6.mp3'));
        return;
    }
  }
}
