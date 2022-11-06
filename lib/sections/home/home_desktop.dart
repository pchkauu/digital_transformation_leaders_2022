import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solution/animations/entrance_fader.dart';
import 'package:solution/configs/configs.dart';
import 'package:solution/constants.dart';
import 'package:solution/provider/app_provider.dart';

import 'package:solution/widget/navbar_logo.dart';

class HomeDesktop extends StatefulWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  State<HomeDesktop> createState() => _HomeDesktopState();
}

class _HomeDesktopState extends State<HomeDesktop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("asset/videogif.gif"), fit: BoxFit.cover),
      ),
      child: Stack(children: [
        Container(
          padding: Space.all(),
          child: Row(
            children: [
              const NavBarLogo(),
              Space.xm!,
              EntranceFader(
                offset: const Offset(0, -10),
                delay: const Duration(milliseconds: 100),
                duration: const Duration(milliseconds: 250),
                child: MaterialButton(
                  hoverColor: AppTheme.c!.primary!.withAlpha(150),
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(125.0),
                    side: BorderSide(
                      color: AppTheme.c!.primary!,
                    ),
                  ),
                  onPressed: () => {openURL("/")},
                  child: Padding(
                    padding: Space.all(1.25, 0.45),
                    child: Text(
                      'Презентация',
                      style: AppText.h1b!
                          .copyWith(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 16),
              EntranceFader(
                offset: const Offset(0, -10),
                delay: const Duration(milliseconds: 100),
                duration: const Duration(milliseconds: 250),
                child: MaterialButton(
                  hoverColor: AppTheme.c!.primary!.withAlpha(150),
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(125.0),
                    side: BorderSide(
                      color: AppTheme.c!.primary!,
                    ),
                  ),
                  onPressed: () => {openURL("/")},
                  child: Padding(
                    padding: Space.all(1.25, 0.45),
                    child: Text(
                      'Документация',
                      style: AppText.h1b!
                          .copyWith(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 16),
              EntranceFader(
                offset: const Offset(0, -10),
                delay: const Duration(milliseconds: 100),
                duration: const Duration(milliseconds: 250),
                child: MaterialButton(
                  hoverColor: AppTheme.c!.primary!.withAlpha(150),
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(125.0),
                    side: BorderSide(
                      color: AppTheme.c!.primary!,
                    ),
                  ),
                  onPressed: () => {openURL("/")},
                  child: Padding(
                    padding: Space.all(1.25, 0.45),
                    child: Text(
                      'Telegram',
                      style: AppText.h1b!
                          .copyWith(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
              Space.x!,
              /*Switch(
            inactiveTrackColor: Colors.grey,
            value: appProvider.isDark,
            onChanged: (value) {
              appProvider.setTheme(
                !value ? ThemeMode.light : ThemeMode.dark,
              );
            },
            activeColor: AppTheme.c!.primary!,
          ),*/
              Space.x!,
            ],
          ),
        )
      ]),
    );
  }
}

class _NavbarDesktop extends StatelessWidget {
  const _NavbarDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);

    return Container(
      padding: Space.all(),
      color: appProvider.isDark ? Colors.black : Colors.white,
      child: Row(
        children: [
          const NavBarLogo(),
          Space.xm!,
          EntranceFader(
            offset: const Offset(0, -10),
            delay: const Duration(milliseconds: 100),
            duration: const Duration(milliseconds: 250),
            child: MaterialButton(
              hoverColor: AppTheme.c!.primary!.withAlpha(150),
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(125.0),
                side: BorderSide(
                  color: AppTheme.c!.primary!,
                ),
              ),
              onPressed: () => {openURL("/")},
              child: Padding(
                padding: Space.all(1.25, 0.45),
                child: Text(
                  'Презентация',
                  style:
                      AppText.h1b!.copyWith(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),
          SizedBox(width: 16),
          EntranceFader(
            offset: const Offset(0, -10),
            delay: const Duration(milliseconds: 100),
            duration: const Duration(milliseconds: 250),
            child: MaterialButton(
              hoverColor: AppTheme.c!.primary!.withAlpha(150),
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(125.0),
                side: BorderSide(
                  color: AppTheme.c!.primary!,
                ),
              ),
              onPressed: () => {openURL("/")},
              child: Padding(
                padding: Space.all(1.25, 0.45),
                child: Text(
                  'Документация',
                  style:
                      AppText.h1b!.copyWith(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),
          SizedBox(width: 16),
          EntranceFader(
            offset: const Offset(0, -10),
            delay: const Duration(milliseconds: 100),
            duration: const Duration(milliseconds: 250),
            child: MaterialButton(
              hoverColor: AppTheme.c!.primary!.withAlpha(150),
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(125.0),
                side: BorderSide(
                  color: AppTheme.c!.primary!,
                ),
              ),
              onPressed: () => {openURL("/")},
              child: Padding(
                padding: Space.all(1.25, 0.45),
                child: Text(
                  'Telegram',
                  style:
                      AppText.h1b!.copyWith(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),
          Space.x!,
          /*Switch(
            inactiveTrackColor: Colors.grey,
            value: appProvider.isDark,
            onChanged: (value) {
              appProvider.setTheme(
                !value ? ThemeMode.light : ThemeMode.dark,
              );
            },
            activeColor: AppTheme.c!.primary!,
          ),*/
          Space.x!,
        ],
      ),
    );
  }
}
