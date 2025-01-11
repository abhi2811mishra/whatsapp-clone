// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/home/Contact/contactscreen.dart';
import 'package:whatsapp/widgets/uihelper.dart';




class ChatsScreen extends StatelessWidget {
  var arrContent = [
    {
      "images":
          "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg",
      "name": "Aron",
      "lastmsg": "Lorem Ipsum",
      "time": "05:45 am",
      "msg": "7"
    },
    {
      "images":
          "https://images.healthshots.com/healthshots/en/uploads/2020/12/08182549/positive-person.jpg",
      "name": "Aron1",
      "lastmsg": "Flutter",
      "time": "06:45 am",
      "msg": "1"
    },
    {
      "images":
          "https://thumbs.dreamstime.com/b/vector-illustration-sad-face-emoticon-emoji-icon-isolated-white-background-sad-face-emoticon-emoji-icon-121697442.jpg",
      "name": "Abhinav",
      "lastmsg": "hello",
      "time": "07:45 am",
      "msg": "2"
    },
    {
      "images":
          "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg",
      "name": "Aron",
      "lastmsg": "Lorem Ipsum",
      "time": "05:45 am",
      "msg": "7"
    },
    {
      "images":
          "https://images.healthshots.com/healthshots/en/uploads/2020/12/08182549/positive-person.jpg",
      "name": "Aron1",
      "lastmsg": "Flutter",
      "time": "06:45 am",
      "msg": "1"
    },
    {
      "images":
          "https://thumbs.dreamstime.com/b/vector-illustration-sad-face-emoticon-emoji-icon-isolated-white-background-sad-face-emoticon-emoji-icon-121697442.jpg",
      "name": "xyz",
      "lastmsg": "hiiiiiiiiiiii",
      "time": "07:45 am",
      "msg": "2"
    },
    {
      "images":
          "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg",
      "name": "Aron",
      "lastmsg": "Lorem Ipsum",
      "time": "05:45 am",
      "msg": "7"
    },
    {
      "images":
          "https://images.healthshots.com/healthshots/en/uploads/2020/12/08182549/positive-person.jpg",
      "name": "Aron1",
      "lastmsg": "Flutter",
      "time": "06:45 am",
      "msg": "1"
    },
   
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 40,
                      backgroundImage:
                          NetworkImage(arrContent[index]["images"].toString()),
                    ),
                    title: UiHelper.CustomText(
                        text: arrContent[index]["name"].toString(),
                        height: 14,
                        fontweight: FontWeight.bold),
                    subtitle: UiHelper.CustomText(
                        text: arrContent[index]["lastmsg"].toString(),
                        height: 13,
                        color: Color(0XFF889095)),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        UiHelper.CustomText(
                            text: arrContent[index]["time"].toString(),
                            height: 12,
                            color: Color(0XFF026500)),
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Color(0XFF036A01),
                          child: UiHelper.CustomText(
                              text: arrContent[index]["msg"].toString(),
                              height: 12,
                              color: Color(0XFFFFFFFF)),
                        )
                      ],
                    ),
                  );
                },
                itemCount: arrContent.length,
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ContactScreen()));
          },
          child: Icon(Icons.message),
        ));
  }
}