import 'package:flutter/material.dart';
import 'package:lolaz_clone/ui/screens/chat-room.dart';
import 'package:lolaz_clone/utils/ui/common.dart';
import 'package:lolaz_clone/utils/ui/helpers.dart';

class ChatTileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        navigateToScreen(context, screen: ChatRoom());
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 8),
        width: double.maxFinite,
        clipBehavior: Clip.antiAlias,
        child: ListTile(
          trailing: RichText(
            text: TextSpan(
                text: '04:20 ',
                style: TextStyle(
                    fontFamily: 'Spartan',
                    fontWeight: FontWeight.bold,
                    fontSize: 11,
                    color: Colors.black),
                children: [
                  TextSpan(
                    text: "AM",
                    style: TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                ]),
          ),
          title: Text(
            "Shaniqua Bodegea",
            style: TextStyle(
                fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              "This is not a message , this is the whole thing",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 11,
                color: Colors.black.withOpacity(0.4),
              ),
            ),
          ),
          leading: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.grey.withOpacity(0.3),
            child: Center(
              child: Icon(
                Icons.image,
                color: Colors.white,
              ),
            ),
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 2, vertical: 8),
        decoration: BoxDecoration(
            border: Border.all(color: UiCommons.primaryColor.withOpacity(0.3))),
      ),
    );
  }
}
