import 'package:build_own_cake/app%20screens/get_started.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:google_fonts/google_fonts.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Stripe.publishableKey =
      'pk_test_51JoWwWE47PNYl4hqvlfsXC9yuxv7KptXfU5t5GpQHNvxdve4DE0450p9SkFwfmCoKT6OE8yly1KWkQSQLPA5qFAD00t5D2Wddh';
  await Stripe.instance.applySettings();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final MaterialColor primaryColor = const MaterialColor(
    0xffd62764,
    <int, Color>{
      50: Color(0xffd62764),
      100: Color(0xffd62764),
      200: Color(0xffd62764),
      300: Color(0xffd62764),
      400: Color(0xffd62764),
      500: Color(0xffd62764),
      600: Color(0xffd62764),
      700: Color(0xffd62764),
      800: Color(0xffd62764),
      900: Color(0xffd62764),
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Build Your Cake',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: primaryColor,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
        colorScheme: const ColorScheme.light(),
      ).copyWith(
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.android: ZoomPageTransitionsBuilder(),
          },
        ),
      ),
      home: const GetStarted(),
    );
  }
}
