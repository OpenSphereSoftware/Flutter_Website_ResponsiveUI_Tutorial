import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsiveweb/presentation/core/page_wrapper/centerd_constrained_wrapper.dart';
import 'package:responsiveweb/presentation/core/buttons/call_to_action_button.dart';
import 'package:responsiveweb/presentation/core/page_wrapper/page_template.dart';
import 'package:responsiveweb/typography.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveWrapper.of(context);
    return 
       PageTemplate(
         child: ListView(
           children: [
             CenteredConstrainedWrapper(
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 20,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Sorry, we couldn't find that page",
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
                      "404",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: fontFamily,
                          fontSize: responsive.equals(DESKTOP) ? 60 : 40,
                          fontWeight: FontWeight.bold,
                          height: 0.9),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: responsive.equals(TABLET) ? 70 : 0,
                          vertical: 20),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(maxHeight: 300),
                        child: Image.asset(
                      
                          "assets/images/mixer.png",
                          
                        ),
                      ),
                    ),
                    Text(
                      "But maybe you find help starting back from the Homepage?",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: fontFamily,
                        fontSize: responsive.equals(DESKTOP) ? 20 : 18,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    CallToAction(
                      filled: false,
                      text: "Back to homepage",
                      callback: () {},
                    )
                  ],
                ),
              ),
                 
               ),
           ],
         ),
       );
  }
}
