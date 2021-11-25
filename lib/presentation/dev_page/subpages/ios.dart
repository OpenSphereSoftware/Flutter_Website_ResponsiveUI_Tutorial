import 'package:flutter/material.dart';
import 'package:responsiveweb/presentation/core/page_wrapper/page_template.dart';
import 'package:responsiveweb/presentation/dev_page/widgets/development.dart';

class DevelopmentPage extends StatelessWidget {
  const DevelopmentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> partblocks = [
      const Development(),
    ];
    return PageTemplate(
      child: ListView.builder(
          itemCount: partblocks.length,
          itemBuilder: (context, index) {
            return partblocks[index];
          }),
    );
  }
}
