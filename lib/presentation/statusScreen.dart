import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappclone_youtube/constants/color.dart';
import 'package:whatsappclone_youtube/modal/statusModal.dart';

class StatusScreen extends StatefulWidget {
  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: grey100,
            child: Icon(
              Icons.edit,
              color: grey700,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            child: Icon(Icons.camera_alt),
          ),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Stack(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/images/dhoni.jpg"),
                ),
                Positioned(
                  bottom: -2,
                  right: -1,
                  child: Container(
                    child: Center(
                      child: Icon(
                        Icons.add,
                        color: white,
                      ),
                    ),
                    height: 30,
                    width: 30,
                    decoration:
                        BoxDecoration(color: teal, shape: BoxShape.circle),
                  ),
                )
              ],
            ),
            title: Text(
              "My status",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            subtitle: Text("Tap to add status update"),
          ),
          Container(
            color: grey300,
            height: 40,
            width: size.width,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  "Recent updates",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
          ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: dummyStatus.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage(dummyStatus[index].statusPic),
                      ),
                      title: Text(
                        dummyStatus[index].userName,
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      subtitle:
                          Text("${dummyStatus[index].updatedTime} minutes ago"),
                    )
                  ],
                );
              })
        ],
      ),
    );
  }
}
