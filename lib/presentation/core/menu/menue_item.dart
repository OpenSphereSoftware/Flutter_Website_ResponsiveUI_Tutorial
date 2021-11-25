import 'package:flutter/material.dart';
import 'package:responsiveweb/typography.dart';
import 'package:routemaster/routemaster.dart';

class MenuItem extends StatelessWidget {
  final String path;
  final String name;
  final bool isInDrawer;
  const MenuItem(
      {Key? key,
      required this.path,
      required this.isInDrawer,
      required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          Routemaster.of(context).replace(path);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(name,
              style: TextStyle(
                  fontSize: 15,
                  color: isInDrawer
                      ? Colors.white
                      : (RouteData.of(context).path.contains(path))
                          ? Colors.blue
                          : Colors.grey[700],
                  fontFamily: fontFamily)),
        ),
      ),
    );
  }
}
