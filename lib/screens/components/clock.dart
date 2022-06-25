import 'dart:async';
import 'dart:math';

import 'package:flutter_clock_theme/models/my_theme_provider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clock_theme/constants.dart';
import 'package:flutter_clock_theme/screens/components/clock_painter.dart';
import 'package:flutter_clock_theme/size_config.dart';
import "package:provider/provider.dart";

class Clock extends StatefulWidget {
  const Clock({Key? key}) : super(key: key);

  @override
  _ClockState createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  DateTime _dateTime = DateTime.now().toUtc().add(const Duration(hours: 3));

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _dateTime = DateTime.now().toUtc().add(const Duration(hours: 3));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 0),
                    color: kShadowColor.withOpacity(0.14),
                    blurRadius: 64,
                  ),
                ],
              ),
              child: Transform.rotate(
                angle: -pi / 2,
                child: CustomPaint(
                  painter: ClockPainter(context, _dateTime),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 30,
          left: 0,
          right: 0,
          child: Consumer<MyThemeModel>(
            builder: (context, theme, child) => InkWell(
              onTap: () => theme.changeTheme(),
              child: SvgPicture.asset(
                theme.isLightTheme
                    ? "assets/icons/sun.svg"
                    : "assets/icons/moon.svg",
                height: 24,
                width: 24,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        )
      ],
    );
  }
}
