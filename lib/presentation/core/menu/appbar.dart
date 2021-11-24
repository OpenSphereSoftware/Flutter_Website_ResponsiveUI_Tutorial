import 'package:flutter/material.dart';
import 'package:responsiveweb/presentation/core/menu/flutter_home_image.dart';

class FlutterAppbar extends StatelessWidget {
  const FlutterAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color navLinkColor = Color(0xFF6E7274);
    return AppBar(
        iconTheme: const IconThemeData(
          color: navLinkColor,
          size: 20,
        ),
        backgroundColor: Colors.white,
        title: Row(
          children: const [
            FlutterHomeImage(),
          ],
        ));
  }
}
