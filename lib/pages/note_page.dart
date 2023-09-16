import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:notepate/controler/draft_controler.dart';
import 'package:notepate/controler/note_controller.dart';
import 'package:notepate/model/model.dart';
import 'package:notepate/pages/note_details_page.dart';

class NotePage extends StatelessWidget {


  NoteController _noteController=Get.put(NoteController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Note Box')),
        elevation: 0.0,
      ),
      body: GetBuilder<NoteController>(builder: (_){
        return ListView.builder(
            shrinkWrap: true,
            itemCount:_noteController.notes.length,
            itemBuilder:(context,index){

              NoteModel note=_noteController.notes[index];
              return ListTile(
                onTap: (){
                  Get.to(NoteDraftPage(note: note,));
                },
                leading: Image.file(note.image),
                title: Text(note.title),
                subtitle: Text(note.description),
                trailing: Icon(Icons.arrow_forward_ios),

              );
            });
      }),
    );
  }
}
