import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:whatsappclone_youtube/constants/color.dart';
import 'package:whatsappclone_youtube/modal/callModal.dart';

class CallsScreen extends StatefulWidget {
  @override
  _CallsScreenState createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: grey100,
            child: Icon(
              Icons.video_call,
              color: grey700,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(child: Icon(Icons.video_call))
        ],
      ),
      body: ListView.builder(
          itemCount: dummyCall.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(dummyCall[index].userPic),
                  ),
                  title: Text(
                    dummyCall[index].userName,
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  subtitle: Row(
                    children: [
                      dummyCall[index].isIncoming
                          ? Icon(
                              Icons.call_missed,
                              color: red,
                            )
                          : Icon(
                              Icons.call_made,
                              color: teal,
                            ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("${dummyCall[index].callTime} minutes ago"),
                    ],
                  ),
                  trailing: dummyCall[index].isVideo
                      ? Icon(
                          Icons.videocam,
                          color: teal,
                        )
                      : Icon(
                          Icons.call,
                          color: teal,
                        ),
                )
              ],
            );
          }),
    );
  }
}
