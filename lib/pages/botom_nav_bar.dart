import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:notepate/pages/creat_note_page.dart';
import 'package:notepate/pages/draft_page.dart';
import 'package:notepate/pages/note_page.dart';
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  List<Widget> pages=[NotePage(),DraftPage()];
  int _currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Get.to(CreatNotePage());
        },
        child: Icon(Icons.add),
      ),


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.note_add),label: 'Note'),
          BottomNavigationBarItem(icon: Icon(Icons.drafts),label: 'Draft'),
        ],
        onTap: (value){
         setState((){
              _currentIndex=value;
         });
      },
      ),
          body: pages[_currentIndex]

    );
  }
}
