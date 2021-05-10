import 'package:flutter/material.dart';
import 'package:lolaz_clone/utils/ui/common.dart';

class HotOrNotItem extends StatelessWidget {
  final Color color;
  final int index;
  final VoidCallback onButton;

  const HotOrNotItem({Key key, this.color, this.index, this.onButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: color.withOpacity(0.15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundColor: color,
            ),
            SizedBox(
              height: 10,
            ),
            Text("Peson ${index + 1}"),
            SizedBox(
              height: 80,
            ),
            Wrap(
              alignment: WrapAlignment.center,
              children: [
                RawMaterialButton(
                    constraints: BoxConstraints(
                        minHeight: 60,
                        minWidth: 60,
                        maxHeight: 60,
                        maxWidth: 60),
                    shape: CircleBorder(),
                    child: Icon(
                      Icons.close,
                      size: 30,
                      color: Colors.red,
                    ),
                    fillColor: UiCommons.whiteColor,
                    onPressed: onButton),
                SizedBox(
                  width: 80,
                ),
                RawMaterialButton(
                    constraints: BoxConstraints(
                        minHeight: 60,
                        minWidth: 60,
                        maxHeight: 60,
                        maxWidth: 60),
                    shape: CircleBorder(),
                    child: Icon(
                      Icons.favorite_border,
                      size: 30,
                      color: UiCommons.primaryColor,
                    ),
                    fillColor: UiCommons.whiteColor,
                    onPressed: onButton),
              ],
            ),
            SizedBox(
              height: 10,
            )
          ],
        ));
  }
}
