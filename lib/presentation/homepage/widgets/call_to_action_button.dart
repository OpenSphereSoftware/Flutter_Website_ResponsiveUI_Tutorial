import 'package:flutter/material.dart';

class CallToAction extends StatelessWidget {
  final bool filled;
  final String text;
  const CallToAction({Key? key, required this.filled, required this.text})
      : super(key: key);

  get fontFamily => null;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {},
        child: IntrinsicWidth(
          child: Container(
            height: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: filled ? Colors.blue[800] : Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.blue[800]!)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                text,
                style: TextStyle(
                    fontSize: 15,
                    color: filled ? Colors.white : Colors.blue[800],
                    fontFamily: fontFamily),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
