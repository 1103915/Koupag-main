import 'package:flutter/material.dart';
import 'package:koupag/widgets/date_text.dart';
import 'package:koupag/widgets/heading_text.dart';

class DonationStatus extends StatelessWidget {
  const DonationStatus(
      {super.key, required this.value, required this.donationDate});

  final double? value;
  final DateTime donationDate;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).primaryColor.withAlpha(200),
      child: Column(
        children: [
          // Header text
          const Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HeadingText(
                  text: 'DONATION',
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                HeadingText(
                  text: 'STATUS',
                  color: Colors.white,
                )
              ],
            ),
          ),

          //Progress bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: LinearProgressIndicator(
              value: value,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Requested\nDonation',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Volunteered\nDonation',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'Successful\nDonation',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),

          //Date section
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
              child: DateText(
                date: donationDate.toString(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
