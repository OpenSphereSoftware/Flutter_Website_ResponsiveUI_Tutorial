import 'package:flutter/material.dart';
import 'package:responsiveweb/typography.dart';

class MenuItem extends StatelessWidget {
  final String url;
  final String name;
  final bool isInDrawer;
  const MenuItem({Key? key, required this.url, required this.isInDrawer, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color navLinkColor = Color(0xFF6E7274);
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {}, //openUrl("https://flutter.dev/docs"),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(name,
              style:  TextStyle(
                  fontSize: 15, color: isInDrawer? Colors.white: navLinkColor, fontFamily: fontFamily)),
        ),
      ),
    );
  }
}
