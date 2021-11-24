import 'package:flutter/material.dart';

class FlutterHomeImage extends StatelessWidget {
  const FlutterHomeImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap:
            () {}, //=>Navigator.of(context).popUntil((route) => route.isFirst),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 5, 16, 5),
          child: Image.asset("assets/images/flutter_logo_text.png",
              height: 37, fit: BoxFit.contain),
        ),
      ),
    );
  }
}
