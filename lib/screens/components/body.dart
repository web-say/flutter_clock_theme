import 'package:flutter/material.dart';
import 'package:flutter_clock_theme/constants.dart';
import 'package:flutter_clock_theme/screens/components/clock.dart';
import 'package:flutter_clock_theme/screens/components/clock_painter.dart';
import 'package:flutter_clock_theme/screens/components/time_in_hour_and_minute.dart';
import 'package:flutter_clock_theme/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  // const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            "New Beach, USA | PST",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          TimeInHourAndMinute(),
          Clock(),
        ],
      ),
    );
  }
}
