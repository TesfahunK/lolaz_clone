import 'package:flutter/material.dart';
import 'package:lolaz_clone/utils/ui/common.dart';

// nav helpers
void navigateToScreen(BuildContext context,
    {@required Widget screen, bool replace: false}) {
  if (replace) {
    Navigator.of(context).pushReplacement(
        new MaterialPageRoute(builder: (BuildContext context) => screen));
  } else {
    Navigator.of(context)
        .push(new MaterialPageRoute(builder: (BuildContext context) => screen));
  }
}

void popRoute(BuildContext context) => Navigator.pop(context);

// swatch helpers

MaterialColor primarySwatch(
        {int integerColor = UiCommons.integerPrimary,
        Color materialColor = UiCommons.primaryColor}) =>
    new MaterialColor(integerColor, swatchColorMaker(materialColor));

Map<int, Color> swatchColorMaker(Color color) {
  return <int, Color>{
    50: color.withOpacity(0.1),
    100: color.withOpacity(0.2),
    200: color.withOpacity(0.3),
    300: color.withOpacity(0.4),
    400: color.withOpacity(0.5),
    500: color.withOpacity(0.6),
    600: color.withOpacity(0.7),
    700: color.withOpacity(0.8),
    800: color.withOpacity(0.9),
    900: color.withOpacity(1),
  };
}

// SliverPersistent Header wrapper

class PersistentHeaderWrapper extends SliverPersistentHeaderDelegate {
  final Widget child;
  final double maxHeight;
  final double minHeight;

  PersistentHeaderWrapper({this.child, this.maxHeight, this.minHeight});
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return LayoutBuilder(builder: (context, constraints) {
      return child;
    });
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate _) => true;

  @override
  double get maxExtent => maxHeight;

  @override
  double get minExtent => minHeight;
}

double calculateDimension(BuildContext context,
    {@required bool isHeight, @required double percent}) {
  Size size = MediaQuery.of(context).size;
  return isHeight ? size.height * percent : size.width * percent;
}
