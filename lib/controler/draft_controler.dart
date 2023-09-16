import 'package:get/get.dart';

import '../model/model.dart';

class DraftController extends GetxController{
  List<NoteModel> drafts=[];

  void addDrafe(NoteModel note){
    drafts.add(note);
    print(drafts);
    update();
  }
}