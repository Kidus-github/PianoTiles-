import 'package:flutter/material.dart';

import '../../../provider/note_state.dart';

class LineTiles extends StatelessWidget {
  const LineTiles({
    super.key,
    required this.noteState,
    required this.height,
    required this.onTap,
    required this.index,
  });

  final NoteState noteState;
  final double height;
  final VoidCallback onTap;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTapDown: (_) {
          onTap();
        },
        child: SizedBox(
          height: height,
          width: double.infinity,
          child: Container(
            color: color,
          ),
        ),
      ),
    );
  }

  Color get color {
    switch (noteState) {
      case NoteState.ReadyState:
        return Colors.black;
        break;
      case NoteState.MissedState:
        return Colors.pink;
        break;
      case NoteState.TappedState:
        return Colors.blue.shade300;
        break;
      default:
        return Colors.black;
    }
  }
}
