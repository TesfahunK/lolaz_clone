import 'package:flutter/material.dart';
import 'package:lolaz_clone/ui/widgets/match-tab-item.dart';
import 'package:lolaz_clone/utils/ui/common.dart';
import 'package:lolaz_clone/utils/ui/widgets.dart';

class TheHomeScreen extends StatefulWidget {
  @override
  _TheHomeScreenState createState() => _TheHomeScreenState();
}

class _TheHomeScreenState extends State<TheHomeScreen>
    with TickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: TabBar(
            labelPadding: EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            labelColor: UiCommons.accentColor,
            // isScrollable: true,
            labelStyle: TextStyle(
              fontSize: 16,
              fontFamily: 'Spartan',
              fontWeight: FontWeight.bold,
            ),
            unselectedLabelStyle: TextStyle(
              fontSize: 14,
              fontFamily: 'Spartan',
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
            unselectedLabelColor: Colors.blueGrey,
            // indicator: CircleTabIndicator(
            //     color: UiCommons.accentColor, radius: 4),
            controller: _tabController,
            tabs: [
              Tab(
                text: "Nearby",
              ),
              Tab(
                text: "Matches",
              ),
              Tab(
                text: "Hot or Not",
              )
            ]),
        body: TabBarView(controller: _tabController, children: [
          Container(
            child: Center(
              child: CommonWidgets.emptyList(
                  msg: "Map Goes Here !!", icon: Icons.map),
            ),
          ),
          _MatchesScreen(),
          Container()
        ]),
      ),
    );
  }
}

class _MatchesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Wrap(
              runSpacing: 10,
              alignment: WrapAlignment.spaceAround,
              children: List.generate(24, (index) => MatchItemWidget()),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 150,
          ),
        )
      ],
    );
  }
}
