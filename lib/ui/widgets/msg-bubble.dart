import 'package:flutter/material.dart';
import 'package:lolaz_clone/data/model/message.dart';
import 'package:lolaz_clone/utils/data/date.dart';
import 'package:lolaz_clone/utils/ui/common.dart';
import 'package:lolaz_clone/utils/ui/helpers.dart';

class ChatBubble extends StatelessWidget {
  final ChatBubbleModel msg;

  const ChatBubble({Key key, this.msg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment:
            !msg.me ? MainAxisAlignment.start : MainAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment:
                msg.me ? CrossAxisAlignment.start : CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                width:
                    calculateDimension(context, isHeight: false, percent: 0.8),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.grey.withOpacity(0.3), width: 0.4),
                    borderRadius: BorderRadius.circular(20),
                    color: msg.me ? UiCommons.primaryColor : Colors.white),
                child: Text(
                  msg.msg,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: msg.me ? Colors.white : Colors.black),
                ),
              ),
              Text(
                differenceBetween(msg.timestamp),
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
        ],
      ),
    );
  }
}
