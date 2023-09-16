import 'package:get/get.dart';
import 'package:notepate/model/model.dart';

class NoteController extends GetxController{
  List<NoteModel> notes=[];

  void addNotes(NoteModel note){
    notes.add(note);
    update();
  }
}