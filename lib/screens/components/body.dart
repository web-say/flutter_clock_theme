import 'package:flutter/material.dart';
import 'package:flutter_clock_theme/screens/components/clock.dart';
import 'package:flutter_clock_theme/screens/components/country_card.dart';
import 'package:flutter_clock_theme/screens/components/time_in_hour_and_minute.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  // const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              "Lugansk, LPR",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            const TimeInHourAndMinute(),
            const Spacer(),
            const Clock(),
            const Spacer(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  CountryCard(
                    country: "Moscow, Russia",
                    timeZone: "+3 HRS | EST",
                    iconSrc: "assets/icons/moscow.svg",
                    time: "9:20",
                    period: "PM",
                  ),
                  CountryCard(
                    country: "Kiev, Ukraine",
                    timeZone: "+3 HRS | EST",
                    iconSrc: "assets/icons/kiev.svg",
                    time: "9:20",
                    period: "PM",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
