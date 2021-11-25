import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsiveweb/presentation/core/page_wrapper/fancy_page_animation.dart';
import 'package:responsiveweb/presentation/dev_page/dev_page.dart';
import 'package:responsiveweb/presentation/ecosystem/eco_page.dart';
import 'package:responsiveweb/presentation/homepage/homepage.dart';
import 'package:responsiveweb/presentation/not_found_page/not_found_page.dart';
import 'package:responsiveweb/theme.dart';
import 'package:routemaster/routemaster.dart';

void main() {
  runApp(const MyApp());
}

final routes = RouteMap(
    onUnknownRoute: (route) {
      return const MaterialPage(child: NotFoundPage());
    },
    routes: {
      '/home': (_) => const MaterialPage(name: "Homepage", child: Homepage()),
      '/development': (_) =>
          const MaterialPage(name: "Development", child: DevelopmentPage()),
      '/development/plattform/:id': (info) {
        if (info.pathParameters['id'] == 'android') {
          return const FancyAnimationPage(
            name: 'plattform_android',
            child: Placeholder(),
          );
        } else if (info.pathParameters['id'] == 'ios') {
          return const FancyAnimationPage(
            name: 'plattform_ios',
            child: Placeholder(),
          );
        }
        return const Redirect('/development');
      },
      '/ecosystem': (_) =>
          const MaterialPage(name: "Ecosystem", child: EcosystemPage()),
    });

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: RoutemasterDelegate(routesBuilder: (context) => routes),
      routeInformationParser: const RoutemasterParser(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Web Demo',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      builder: (context, widget) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, widget!),
        defaultScale: true,
        minWidth: 400,
        defaultName: MOBILE,
        breakpoints: const [
          ResponsiveBreakpoint.autoScale(450, name: MOBILE),
          ResponsiveBreakpoint.resize(600, name: TABLET),
          ResponsiveBreakpoint.resize(1000, name: DESKTOP),
        ],
        background: Container(
          color: Colors.white,
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
