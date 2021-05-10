import 'package:flutter/material.dart';
import 'package:lolaz_clone/data/model/message.dart';
import 'package:lolaz_clone/ui/widgets/msg-bubble.dart';
import 'package:lolaz_clone/utils/ui/common.dart';
import 'package:lolaz_clone/utils/ui/helpers.dart';
import 'package:lolaz_clone/utils/ui/widgets.dart';

class ChatRoom extends StatefulWidget {
  @override
  _ChatRoomState createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  bool typing = false;
  TextEditingController _text = new TextEditingController(text: "");
  List<ChatBubbleModel> _messages = [];

  Future fakeReceiver() async {
    setState(() {
      typing = true;
    });

    await Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _messages.add(ChatBubbleModel(
            me: false, msg: "Shaniquas Message ${_messages.length + 1}"));
        typing = false;
      });
    });
  }

  void sendMsg() {
    setState(() {
      _messages.add(ChatBubbleModel(msg: _text.text));
      _text = new TextEditingController(text: "");
    });

    FocusScope.of(context).unfocus();

    fakeReceiver();
  }

  // @override
  // void dispose() {
  //   super.dispose();
  // }

  @override
  void initState() {
    fakeReceiver();
    super.initState();
  }

  Widget avatar() {
    return Stack(
      children: [
        CircleAvatar(
          radius: 23,
          backgroundColor: UiCommons.accentColor,
          child: Icon(
            Icons.image,
            color: Colors.white,
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: CircleAvatar(
            radius: 6,
            backgroundColor: Colors.green,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.2,
        title: Row(
          children: [
            avatar(),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Shaniqua Bodegea",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                typing
                    ? Text(
                        "... typing",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.purple),
                      )
                    : Container()
              ],
              mainAxisSize: MainAxisSize.min,
            )
          ],
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: UiCommons.primaryColor,
          onPressed: () {
            popRoute(context);
          },
        ),
      ),
      body: Stack(children: [
        CustomScrollView(
          slivers: _messages.isEmpty
              ? [
                  SliverFillRemaining(
                    child: Center(
                        child: CommonWidgets.emptyList(
                            msg: "start a convo", icon: Icons.message)),
                  )
                ]
              : [
                  SliverList(
                      delegate: SliverChildBuilderDelegate((ctx, index) {
                    return ChatBubble(
                      msg: _messages[index],
                    );
                  }, childCount: _messages.length)),
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: 150,
                    ),
                  )
                ],
        ),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.white,
              child: TextFormField(
                minLines: 1,
                maxLines: null,
                controller: _text,
                style: TextStyle(
                    fontSize: 13,
                    color: UiCommons.accentColor,
                    fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        icon: Icon(Icons.send),
                        color: UiCommons.primaryColor,
                        onPressed: () {
                          if (_text.text.isNotEmpty) {
                            sendMsg();
                          }
                        }),
                    hintStyle:
                        TextStyle(color: UiCommons.primaryColor, fontSize: 13),
                    fillColor: Colors.red,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 5, horizontal: 13),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide:
                            BorderSide(color: UiCommons.accentColor, width: 1)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide:
                            BorderSide(color: UiCommons.accentColor, width: 1)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide:
                            BorderSide(color: UiCommons.accentColor, width: 1)),
                    hintText: "Search .."),
              ),
            ))
      ]),
    );
  }
}
