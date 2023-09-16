import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:notepate/model/model.dart';
class NoteDraftPage extends StatefulWidget {
     NoteModel note;
    NoteDraftPage({required this.note});

  @override
  State<NoteDraftPage> createState() => _NoteDraftPageState();
}

class _NoteDraftPageState extends State<NoteDraftPage> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Note Details')),
          elevation: 0.0,
        ),
           body: Padding(
             padding: const EdgeInsets.all(12.0),
             child: Container(
               child: Column(
                 children: [
                   Container(
                     child: Image.file(widget.note.image,height: 300.0,width: size.width,fit: BoxFit.cover),
             ),
                   SizedBox(height: 15.0,),
                   Text(widget.note.title, style: TextStyle(fontSize: 20.0),),
                   SizedBox(height: 15.0,),
                   Text(widget.note.description, style: TextStyle(fontSize: 14.0),),

                 ],
               ),

    ),
           ),
    );
}
}

