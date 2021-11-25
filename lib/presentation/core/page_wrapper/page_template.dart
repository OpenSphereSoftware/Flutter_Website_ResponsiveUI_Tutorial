import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsiveweb/presentation/core/menu/appbar.dart';
import 'package:responsiveweb/presentation/core/menu/drawer.dart';
import 'package:responsiveweb/presentation/core/menu/menu_bar.dart';

class PageTemplate extends StatelessWidget {
  final Widget child;
  const PageTemplate({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        endDrawer: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
            ? const CustomDrawer()
            : null,
        appBar: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
            ? const PreferredSize(
                preferredSize: Size(double.infinity, 60),
                child: FlutterAppbar())
            : const PreferredSize(
                preferredSize: Size(double.infinity, 66), child: MenuBar()),
        body: child
       
        );
  }
}
