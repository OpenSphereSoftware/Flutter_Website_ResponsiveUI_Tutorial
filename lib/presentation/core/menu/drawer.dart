import 'package:flutter/material.dart';
import 'package:responsiveweb/presentation/core/menu/flutter_home_image.dart';
import 'package:responsiveweb/presentation/core/menu/get_started_button.dart';
import 'package:responsiveweb/presentation/core/menu/menue_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[700],
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const FlutterHomeImage(),
                    const Spacer(),
                    IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: const Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 18,
                        ))
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const MenuItem(
                  url: "some url oder nav link",
                  name: "Docs",
                  isInDrawer: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                const MenuItem(
                  url: "some url oder nav link",
                  name: "Showcase",
                  isInDrawer: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                const MenuItem(
                  url: "some url oder nav link",
                  name: "Development",
                  isInDrawer: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                const MenuItem(
                  url: "some url oder nav link",
                  name: "Ecosystem",
                  isInDrawer: true,
                )
              ],
            ),
            Column(
              children: const [
                Spacer(),
                GetStartedButton(inDrawer: true),
                SizedBox(
                  height: 20,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
