import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:whatsappclone_youtube/constants/color.dart';
import 'package:whatsappclone_youtube/modal/chatModal.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.message),
      ),
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: dummtChat.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(dummtChat[index].profilePic),
                  ),
                  title: Text(dummtChat[index].name),
                  subtitle: Text(dummtChat[index].lastMessage),
                  trailing: Column(
                    children: [
                      Text(
                        dummtChat[index].time,
                        style: TextStyle(
                            color: dummtChat[index].isRead ? grey : teal),
                      ),
                      SizedBox(height: 10),
                      dummtChat[index].isRead
                          ? Container(
                              height: 0,
                              width: 0,
                            )
                          : Container(
                              height: 25,
                              width: 25,
                              child: Center(
                                child: Text(
                                  "1",
                                  style: TextStyle(color: white),
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: teal,
                                shape: BoxShape.circle,
                              ),
                            )
                    ],
                  ),
                ),
                Divider(
                  indent: 65,
                  endIndent: 20,
                )
              ],
            );
          }),
    );
  }
}
