import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsiveweb/presentation/core/page_wrapper/centerd_constrained_wrapper.dart';
import 'package:responsiveweb/typography.dart';

class Development extends StatelessWidget {
  const Development({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveWrapper.of(context);
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.teal[100],
      ),
      child: CenteredConstrainedWrapper(
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            ResponsiveRowColumn(
              columnVerticalDirection: VerticalDirection.up,
              columnMainAxisSize: MainAxisSize.min,
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
                          "Build more with Flutter",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: fontFamily,
                              fontSize: responsive.equals(DESKTOP) ? 75 : 40,
                              fontWeight: FontWeight.bold,
                              height: 0.9),
                          textAlign: responsive.isSmallerThan(DESKTOP)
                              ? TextAlign.center
                              : TextAlign.start,
                        ),
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
                        "assets/images/development.png",
                      ),
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 50,
                vertical: 20,
              ),
              child: Text(
                "Flutter transforms the app development process so you can ship more, faster. Deploy to six targets from a single codebase.",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: fontFamily,
                  fontSize: responsive.equals(DESKTOP) ? 38 : 22,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
