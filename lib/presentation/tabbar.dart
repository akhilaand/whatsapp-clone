import 'package:flutter/material.dart';
import 'package:whatsappclone_youtube/constants/color.dart';
import 'package:whatsappclone_youtube/presentation/callScreen.dart';
import 'package:whatsappclone_youtube/presentation/camera.dart';
import 'package:whatsappclone_youtube/presentation/chatScreen.dart';
import 'package:whatsappclone_youtube/presentation/statusScreen.dart';

class TabBarPage extends StatefulWidget {
  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "WhatsApp",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: white,
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: white,
            ),
          )
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: white,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "CHATS",
            ),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALLS",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          CameraScreen(),
          ChatScreen(),
          StatusScreen(),
          CallsScreen(),
        ],
      ),
    );
  }
}
