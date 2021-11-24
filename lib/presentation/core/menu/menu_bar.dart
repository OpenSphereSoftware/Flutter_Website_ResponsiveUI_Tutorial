import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_framework/responsive_value.dart';
import 'package:responsiveweb/presentation/core/menu/flutter_home_image.dart';
import 'package:responsiveweb/presentation/core/menu/get_started_button.dart';
import 'package:responsiveweb/presentation/core/menu/menue_item.dart';

class MenuBar extends StatelessWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      decoration: const BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(color: Color(0x1A000000), offset: Offset(0, 2), blurRadius: 4)
      ]),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: const <Widget>[
          FlutterHomeImage(),
          Spacer(),
          ResponsiveVisibility(
              visible: false,
              visibleWhen: [Condition.largerThan(name: MOBILE)],
              child: MenuItem(
                url: "some url oder nav link",
                name: "Docs",
                isInDrawer: false,
              )),
          ResponsiveVisibility(
              visible: false,
              visibleWhen: [Condition.largerThan(name: MOBILE)],
              child: MenuItem(
                url: "some url oder nav link",
                name: "Showcase",
                isInDrawer: false,
              )),
          ResponsiveVisibility(
              visible: false,
              visibleWhen: [Condition.largerThan(name: MOBILE)],
              child: MenuItem(
                url: "some url oder nav link",
                name: "Development",
                isInDrawer: false,
              )),
          ResponsiveVisibility(
              visible: false,
              visibleWhen: [Condition.largerThan(name: MOBILE)],
              child: MenuItem(
                url: "some url oder nav link",
                name: "Ecosystem",
                isInDrawer: false,
              )),
          ResponsiveVisibility(
            visible: false,
            visibleWhen: [Condition.largerThan(name: MOBILE)],
            child: Padding(
              padding: EdgeInsets.only(left: 8, right: 0),
              child: GetStartedButton(
                inDrawer: false,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
