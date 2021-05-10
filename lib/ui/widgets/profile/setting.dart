import 'package:flutter/material.dart';
import 'package:lolaz_clone/utils/ui/common.dart';

class SettingSection extends StatefulWidget {
  @override
  _SettingSectionState createState() => _SettingSectionState();
}

class _SettingSectionState extends State<SettingSection> {
  RangeValues _ranges = const RangeValues(18, 40);
  double _distance = 30;

  Widget _settingItemWrapper({Widget child, VoidCallback onTouch}) {
    return InkWell(
      onTap: onTouch,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        width: double.maxFinite,
        clipBehavior: Clip.antiAlias,
        child: child,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.withOpacity(0.3))),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Settings",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          _settingItemWrapper(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Interested In",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Male",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: UiCommons.primaryColor),
              )
            ],
          )),
          SizedBox(
            height: 8,
          ),
          _settingItemWrapper(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Maximum Distance",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "${_distance.toInt()} KM",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Slider(
                value: _distance,
                min: 10,
                max: 80,
                onChanged: (double value) {
                  setState(() {
                    _distance = value;
                  });
                },
              )
            ],
          )),
          SizedBox(
            height: 8,
          ),
          _settingItemWrapper(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Age Range",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text("18-40")
                ],
              ),
              SizedBox(
                height: 15,
              ),
              RangeSlider(
                values: _ranges,
                min: 18,
                max: 50,
                onChanged: (RangeValues values) {
                  setState(() {
                    _ranges = values;
                  });
                },
              )
            ],
          )),
          SizedBox(
            height: 8,
          )
        ],
      ),
    );
  }
}
