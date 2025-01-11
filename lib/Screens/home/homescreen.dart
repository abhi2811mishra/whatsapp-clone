// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/home/calls/callscreen.dart';
import 'package:whatsapp/Screens/home/camera/camerascreen.dart';
import 'package:whatsapp/Screens/home/chats/chatsscreen.dart';
import 'package:whatsapp/Screens/home/status/statusscreen.dart';
import 'package:whatsapp/widgets/uihelper.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text(
                  "CHATS",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                 child: Text(
                 "STATUS",
                style: TextStyle(fontWeight: FontWeight.bold)
)
               
              ),
              Tab(
                child:Text( "CALLS", style: TextStyle(fontWeight: FontWeight.bold) 
                
              )
              ),
            ],
            indicatorColor: Colors.white,
          ),
          toolbarHeight: 70,
          title: UiHelper.CustomText(
              text: "WhatsApp", height: 30, color: Colors.white,fontweight: FontWeight.bold),
          actions: [
            IconButton(
                onPressed: () {

                },
                icon: Icon(Icons.search, color: Colors.white)),
            IconButton(onPressed: (){

            }, icon: Icon(Icons.more_vert_sharp))
          ],
        ),
        body: TabBarView(children: [
          CameraScreen(),
          ChatsScreen(),
          StatusScreen(),
          CallsScreen()
        ]),
      ),
    );
  }
}