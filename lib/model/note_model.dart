import 'package:piano_tiles/provider/note_state.dart';

class NoteModel {
  final int orderNumber;
  final int line;

  NoteState noteState = NoteState.ReadyState;

  NoteModel({required this.orderNumber, required this.line});
}
