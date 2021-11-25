import 'package:flutter/material.dart';
import 'package:responsiveweb/typography.dart';

class GetStartedButton extends StatelessWidget {
  final bool inDrawer;
  const GetStartedButton({Key? key, required this.inDrawer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {},
        child: Material(
          elevation: 6,
          borderRadius: BorderRadius.circular(20),
          color: Colors.transparent,
          child: Container(
            height: 40,
            width: inDrawer ? double.infinity : null,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: inDrawer ? Colors.white : Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "Get started",
                style: TextStyle(
                    fontSize: 15,
                    color: inDrawer ? Colors.blue[800] : Colors.white,
                    fontFamily: fontFamily),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
