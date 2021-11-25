import 'package:flutter/material.dart';
import 'package:responsiveweb/presentation/core/menu/flutter_home_image.dart';
import 'package:responsiveweb/presentation/core/buttons/get_started_button.dart';
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
                  path: "/docs",
                  name: "Docs",
                  isInDrawer: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                const MenuItem(
                  path: "/showcase",
                  name: "Showcase",
                  isInDrawer: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                const MenuItem(
                  path: "/development",
                  name: "Development",
                  isInDrawer: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                const MenuItem(
                  path: "/ecosystem",
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
