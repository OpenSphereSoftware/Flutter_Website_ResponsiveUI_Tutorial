import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

/// A convenience widget to wrap main blocks with:
///  - ResponsiveContraints for max width.
///  - A Center to allow constraints to work in a List.
class CenteredConstrainedWrapper extends StatelessWidget {
  final Widget widget;

  const CenteredConstrainedWrapper(this.widget, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ResponsiveConstraints(
        constraintsWhen: const [
        Condition.equals(name: MOBILE, value: BoxConstraints(maxWidth: 600)),
        Condition.equals(name: TABLET, value: BoxConstraints(maxWidth: 800)),
        Condition.largerThan(
            name: TABLET, value: BoxConstraints(maxWidth: 1280)),
      ], child: widget),
    );
  }
}
