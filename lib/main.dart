import 'package:flutter/material.dart';
import 'package:flutter_responsive_web/views/home_view.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 450, name: MOBILE),
          const Breakpoint(start: 451, end: 800, name: TABLET),
          const Breakpoint(start: 801, end: 1920, name: DESKTOP),
          const Breakpoint(start: 1921, end: double.infinity, name: '4K'),
        ],
      ),
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (context) {
          return MaxWidthBox(
            maxWidth: 1200,
            background: Container(color: const Color(0xFFF5F5F5)),
            child: ResponsiveScaledBox(
              width: ResponsiveValue<double>(context, conditionalValues: [
                Condition.equals(name: MOBILE, value: 450),
                Condition.between(start: 800, end: 1100, value: 800),
                Condition.between(start: 1000, end: 1200, value: 1000),
              ]).value,
              child: BouncingScrollWrapper.builder(
                context,
                buildPage(settings.name ?? ''),
                dragWithMouse: true,
              ),
            ),
          );
        });
      },
      debugShowCheckedModeBanner: false,
    );
  }

  Widget buildPage(String name) {
    switch (name) {
      case '/':
      case HomeView.name:
        return const HomeView();
      default:
        return const SizedBox.shrink();
    }
  }
}
