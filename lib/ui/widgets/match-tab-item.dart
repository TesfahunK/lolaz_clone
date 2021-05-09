import 'package:flutter/material.dart';
import 'package:lolaz_clone/utils/ui/common.dart';

class MatchItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              Container(
                width: 10,
                height: 130,
              ),
              CircleAvatar(
                backgroundColor: Colors.pinkAccent.withOpacity(0.3),
                child: Center(
                  child: Icon(
                    Icons.image,
                    color: UiCommons.whiteColor,
                  ),
                ),
                radius: 60,
              ),
              Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: RawMaterialButton(
                      constraints: BoxConstraints(
                          minHeight: 40,
                          minWidth: 40,
                          maxHeight: 40,
                          maxWidth: 40),
                      shape: CircleBorder(),
                      child: Icon(
                        Icons.message,
                        size: 18,
                        color: UiCommons.whiteColor,
                      ),
                      fillColor: UiCommons.accentColor,
                      onPressed: null))
            ],
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            "Name",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          SizedBox(
            height: 4,
          ),
        ],
      ),
    );
  }
}
