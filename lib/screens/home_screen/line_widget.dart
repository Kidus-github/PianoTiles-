import 'package:flutter/material.dart';
import 'package:piano_tiles/model/note_model.dart';
import 'package:piano_tiles/screens/home_screen/widget/line_tiles.dart';

class LineWidget extends AnimatedWidget {
  final int lineNumber;
  final List<NoteModel> currentNotes;
  final Animation<double> animation;
  final Function(NoteModel note) onTileTap;

  const LineWidget(
      {super.key,
      required this.lineNumber,
      required this.currentNotes,
      required this.animation,
      required this.onTileTap})
      : super(listenable: animation);

  @override
  Widget build(BuildContext context) {
    Animation<double>? _animation = super.listenable as Animation<double>?;
    double height = MediaQuery.of(context).size.height;
    double tileHeight = height / 4;

    List<NoteModel> lineNotes =
        currentNotes.where((note) => note.line == lineNumber).toList();
    List<Widget> tilesWidget = lineNotes.map((note) {
      int index = currentNotes.indexOf(note);
      double offset = (3 - index + _animation!.value) * tileHeight;
      return Transform.translate(
        offset: Offset(0, offset),
        child: LineTiles(
            noteState: note.noteState,
            height: tileHeight,
            onTap: () => onTileTap(note),
            index: index),
      );
    }).toList();
    return SizedBox.expand(
      child: Stack(
        children: tilesWidget,
      ),
    );
  }
}
