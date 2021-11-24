import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsiveweb/presentation/core/centerd_constrained_wrapper.dart';
import 'package:responsiveweb/presentation/core/page_template.dart';
import 'package:responsiveweb/presentation/homepage/widgets/developer_experience.dart';
import 'package:responsiveweb/presentation/homepage/widgets/multi_plattform.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> partblocks = [
      const CenteredConstrainedWrapper(MultiPlattform()),
      const CenteredConstrainedWrapper(DeveloperExperience())
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
