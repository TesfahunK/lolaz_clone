import 'package:flutter/material.dart';
import 'package:lolaz_clone/ui/widgets/chat-tile.dart';
import 'package:lolaz_clone/utils/ui/common.dart';

class ChatRooms extends StatefulWidget {
  @override
  _ChatRoomsState createState() => _ChatRoomsState();
}

class _ChatRoomsState extends State<ChatRooms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.2,
        backgroundColor: UiCommons.whiteColor,
        title: Text(
          "Messages",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: UiCommons.primaryColor,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: 8,
          itemBuilder: (ctx, index) {
            return ChatTileWidget();
          }),
    );
  }
}
