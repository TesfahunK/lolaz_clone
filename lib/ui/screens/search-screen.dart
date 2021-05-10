import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lolaz_clone/ui/widgets/match-tab-item.dart';
import 'package:lolaz_clone/utils/ui/common.dart';
import 'package:lolaz_clone/utils/ui/widgets.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool showSearch = false;
  bool isEmpty = true;
  TextEditingController _search;

  @override
  void initState() {
    _search = new TextEditingController()..addListener(_querylistener);

    super.initState();
  }

  void _querylistener() {
    if (_search.text.isNotEmpty) {
      setState(() {
        isEmpty = false;
      });
    } else {
      setState(() {
        isEmpty = true;
      });
    }
  }

  Widget suffixIcon() {
    return !isEmpty
        ? IconButton(
            icon: Icon(Icons.close),
            color: UiCommons.primaryColor,
            onPressed: () {
              _search.text = "";
            })
        : SizedBox.shrink();
  }

  Widget searchWidget() => TextFormField(
        controller: _search,
        onTap: () {
          if (!showSearch) {
            setState(() {
              showSearch = true;
            });
          }
        },
        style: TextStyle(
            fontSize: 13,
            color: UiCommons.accentColor,
            fontWeight: FontWeight.bold),
        decoration: InputDecoration(
            suffixIcon: suffixIcon(),
            prefixIcon: Icon(
              CupertinoIcons.search,
              size: 18,
            ),
            hintStyle: TextStyle(color: UiCommons.primaryColor, fontSize: 13),
            fillColor: Colors.red,
            contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 13),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide:
                    BorderSide(color: UiCommons.accentColor, width: 0.08)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide:
                    BorderSide(color: UiCommons.accentColor, width: 0.08)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide:
                    BorderSide(color: UiCommons.accentColor, width: 0.08)),
            hintText: "Search .."),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: SafeArea(
            minimum: EdgeInsets.symmetric(horizontal: 10),
            child: searchWidget()),
        preferredSize: Size(double.maxFinite, 48),
      ),
      body: CustomScrollView(
          slivers: showSearch
              ? [
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Wrap(
                        runSpacing: 10,
                        alignment: WrapAlignment.spaceAround,
                        children:
                            List.generate(24, (index) => MatchItemWidget()),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: 150,
                    ),
                  )
                ]
              : [
                  SliverFillRemaining(
                    child: Center(
                      child: CommonWidgets.emptyList(
                          msg: "Search your mate !!", icon: Icons.search),
                    ),
                  )
                ]),
    );
  }
}
