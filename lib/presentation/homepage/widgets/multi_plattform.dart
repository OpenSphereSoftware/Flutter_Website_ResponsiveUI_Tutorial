import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsiveweb/presentation/homepage/widgets/call_to_action_button.dart';
import 'package:responsiveweb/typography.dart';

class MultiPlattform extends StatelessWidget {
  const MultiPlattform({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveWrapper.of(context);
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: ResponsiveRowColumn(
        columnVerticalDirection: VerticalDirection.up,
        layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        rowCrossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ResponsiveRowColumnItem(
            rowFlex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 50,
                vertical: 20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Multi-Platform",
                    style: TextStyle(
                        color: Colors.lightBlue,
                        fontFamily: fontFamily,
                        fontSize: responsive.equals(DESKTOP) ? 20 : 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Reach users on every screen",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: fontFamily,
                        fontSize: responsive.equals(DESKTOP) ? 60 : 40,
                        fontWeight: FontWeight.bold,
                        height: 0.9),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Deploy to multiple devices from a single codebase: mobile, web, desktop, and embedded devices.",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: fontFamily,
                      fontSize: responsive.equals(DESKTOP) ? 20 : 18,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const CallToAction(
                      filled: false, text: "See the target platforms")
                ],
              ),
            ),
          ),
          ResponsiveRowColumnItem(
              rowFlex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: responsive.equals(TABLET) ? 120 : 50,
                  vertical: 20,
                ),
                child: Image.asset(
                  "assets/images/multi_plattform.png",
                ),
              ))
        ],
      ),
    );
  }
}
