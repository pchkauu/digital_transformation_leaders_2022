import 'package:flutter/material.dart';
import 'package:solution/configs/app_typography.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "Дипп_ввод",
          style: AppText.b1b!.copyWith(
              //fontFamily: 'Agustina',
              ),
        ),
      ],
    );
  }
}
