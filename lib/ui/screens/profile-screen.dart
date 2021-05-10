import 'package:flutter/material.dart';
import 'package:lolaz_clone/ui/widgets/profile/basic.dart';
import 'package:lolaz_clone/ui/widgets/profile/setting.dart';
import 'package:lolaz_clone/utils/ui/common.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0.2,
          backgroundColor: UiCommons.whiteColor,
          title: Text(
            "Profile",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: UiCommons.primaryColor,
            ),
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: BasicHeader(),
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              ListTile(
                trailing: Icon(
                  Icons.edit_outlined,
                  color: UiCommons.primaryColor,
                ),
                title: Text(
                  "About",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: UiCommons.grayColor),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    "This is a bio",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              ListTile(
                trailing: Icon(
                  Icons.edit_outlined,
                  color: UiCommons.primaryColor,
                ),
                title: Text(
                  "Age",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: UiCommons.grayColor),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              ListTile(
                trailing: Icon(
                  Icons.edit_outlined,
                  color: UiCommons.primaryColor,
                ),
                title: Text(
                  "Gender",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: UiCommons.grayColor),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              ListTile(
                trailing: Icon(
                  Icons.edit_outlined,
                  color: UiCommons.primaryColor,
                ),
                title: Text(
                  "Job",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: UiCommons.grayColor),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              ListTile(
                trailing: Icon(
                  Icons.edit_outlined,
                  color: UiCommons.primaryColor,
                ),
                title: Text(
                  "Living",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: UiCommons.grayColor),
                ),
              ),
              SizedBox(
                height: 8,
              ),
            ])),
            SliverToBoxAdapter(
              child: SettingSection(),
            )
          ],
        ));
  }
}
