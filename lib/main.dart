import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:solution/constants.dart';
import 'package:solution/controllers/MenuController.dart';
import 'package:solution/provider/app_provider.dart';
import 'package:solution/provider/drawer_provider.dart';
import 'package:solution/provider/scroll_provider.dart';
import 'package:solution/screens/main/main_screen.dart';
import 'package:solution/sections/home/home_desktop.dart';

import 'package:provider/provider.dart';
import 'package:solution/sections/home/landing/landing.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:solution/configs/core_theme.dart' as theme;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppProvider()),
        ChangeNotifierProvider(create: (_) => DrawerProvider()),
        ChangeNotifierProvider(create: (_) => ScrollProvider()),
        ChangeNotifierProvider(
          create: (context) => MenuController(),
        ),
      ],
      child: Consumer<AppProvider>(
        builder: (context, value, _) => MaterialChild(
          provider: value,
        ),
      ),
    );
  }
}

class MaterialChild extends StatefulWidget {
  final AppProvider provider;
  const MaterialChild({Key? key, required this.provider}) : super(key: key);

  @override
  State<MaterialChild> createState() => _MaterialChildState();
}

class _MaterialChildState extends State<MaterialChild> {
  void initAppTheme() {
    final appProviders = AppProvider.state(context);
    appProviders.init();
  }

  @override
  void initState() {
    initAppTheme();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Дипп_ввод',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => Landing(),
        "/исследование": (context) => MainScreen(),
      },
    );
  }
}
