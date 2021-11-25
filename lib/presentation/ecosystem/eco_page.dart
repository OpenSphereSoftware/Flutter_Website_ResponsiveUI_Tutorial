import 'package:flutter/material.dart';
import 'package:responsiveweb/presentation/core/page_wrapper/centerd_constrained_wrapper.dart';
import 'package:responsiveweb/presentation/core/page_wrapper/page_template.dart';
import 'package:responsiveweb/presentation/ecosystem/widgets/ecosystem.dart';

class EcosystemPage extends StatelessWidget {
  const EcosystemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> partblocks = [
      const Ecosystem(),
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
