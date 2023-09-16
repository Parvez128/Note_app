import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:notepate/controler/draft_controler.dart';
import 'package:notepate/model/model.dart';
import 'package:notepate/pages/note_details_page.dart';

class DraftPage extends StatelessWidget {


    DraftController _draftController=Get.put(DraftController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Draft Box')),
        elevation: 0.0,
      ),
      body: GetBuilder<DraftController>(builder: (_){
        return ListView.builder(
          shrinkWrap: true,
          itemCount:_draftController.drafts.length,
            itemBuilder:(context,index){

            NoteModel note=_draftController.drafts[index];
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
