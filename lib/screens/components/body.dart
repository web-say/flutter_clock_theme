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
              "New Beach, USA | PST",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            TimeInHourAndMinute(),
            Spacer(),
            Clock(),
            Spacer(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CountryCard(
                    country: "New York, USA",
                    timeZone: "+3 HRS | EST",
                    iconSrc: "assets/icons/liberty.svg",
                    time: "9:20",
                    period: "PM",
                  ),
                  CountryCard(
                    country: "Sydney, AU",
                    timeZone: "+19 HRS | EST",
                    iconSrc: "assets/icons/liberty.svg",
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
