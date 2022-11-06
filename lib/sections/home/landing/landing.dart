import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Landing extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();
}

List navitems = ["Презентация", "Документация", "Код", "Файлы"];
List text = ["Исследование DICOM", "Умная разметка", "Генерация патологий"];

class _LandingState extends State<Landing> {
  double width = 600;
  String name = text[0];
  double height = 1500;
  int i = 0;
  late bool condition;

  @override
  void initState() {
    width = 0;
    condition = true;
    super.initState();
    Future.delayed(Duration(milliseconds: 400), () {
      setState(() {
        width = 180;
        height = 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff101010),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/videogif.gif"), fit: BoxFit.cover),
        ),
        child: Center(
          child: Stack(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 45.0),
                        child: Text(
                          "Дипп_ввод",
                          style: TextStyle(
                              fontSize: 31.0,
                              fontWeight: FontWeight.w900,
                              color: Colors.white),
                        ),
                      ),
                      Spacer(),
                      Row(
                        children: navitems
                            .map((e) => NavButton(
                                  text: e,
                                  function: () {
                                    setState(() {
                                      condition = true;
                                      height =
                                          MediaQuery.of(context).size.height;
                                    });

                                    if (e == 'Презентация') {
                                      launchUrl(Uri.parse(
                                          'https://drive.google.com/file/d/1qpxNCaC1wK5wbZMsVfLqKrgzsggVN0q8/view?usp=sharing'));
                                    }

                                    if (e == 'Документация') {
                                      launchUrl(Uri.parse(''));
                                    }

                                    if (e == 'Код') {
                                      launchUrl(Uri.parse(
                                          'https://github.com/pchkauu/dippvvod'));
                                    }

                                    if (e == 'Файлы') {
                                      launchUrl(Uri.parse(
                                          'https://drive.google.com/drive/folders/1nPJMGtUO-PaW0NE56F9Qr_ydRRJuH4JE?usp=sharing'));
                                    }

                                    Future.delayed(Duration(milliseconds: 2000),
                                        () {
                                      Navigator.pushNamed(context, '/$e');
                                    });
                                  },
                                ))
                            .toList(),
                      )
                    ],
                  ),
                  Spacer(),
                  ElevatedButton(
                      onPressed: () {
                        Future.delayed(Duration(milliseconds: 120), () {
                          Navigator.pushNamed(context, '/исследование');
                        });
                      },
                      child: Text('Начать исследование',
                          style: TextStyle(fontSize: 32))),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(bottom: 25.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 25.0),
                          child: RotatedBox(
                            quarterTurns: 1,
                            child: Row(
                              children: [
                                Text(
                                  "Лидеры Цифровой Трансформации",
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "Задача 9",
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  )
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    Positioned(
                        top: condition ? null : 0,
                        bottom: condition ? 0 : null,
                        child: AnimatedContainer(
                          height: height,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.black,
                          duration: Duration(milliseconds: 700),
                          curve: Curves.easeInOut,
                          onEnd: () {
                            print("i have runned");
                            setState(() {
                              Future.delayed(Duration(milliseconds: 100), () {
                                height = 0;
                              });
                            });
                            print(height);
                          },
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NavButton extends StatefulWidget {
  final String text;
  final Function function;
  NavButton({required this.function, required this.text});
  @override
  _NavButtonState createState() => _NavButtonState();
}

class _NavButtonState extends State<NavButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.function();
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 25.0),
        child: Text(
          widget.text,
          style: TextStyle(
              fontSize: 15.0, fontWeight: FontWeight.w300, color: Colors.white),
        ),
      ),
    );
  }
}
