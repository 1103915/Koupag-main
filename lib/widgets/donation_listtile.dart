import 'package:flutter/material.dart';
import 'package:koupag/models/donor.dart';
import 'package:koupag/models/recipient.dart';
import 'package:koupag/models/volunteer.dart';
import 'package:koupag/widgets/circular_image.dart';
import 'package:koupag/widgets/date_text.dart';
import 'package:koupag/widgets/heading_text.dart';

class DonationListtile extends StatelessWidget {
  const DonationListtile(
      {super.key, this.donar, this.recipient, this.volunteer});

  final Donor? donar;
  final Recipient? recipient;
  final Volunteer? volunteer;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircularImage(size: 90, imagePath: 'assets/images/person.png'),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeadingText(text: "DONOR"),
                    SizedBox(height: 5),
                    Text("IMDAD RIND"),
                    Text("Turbat, Overseas Colony"),
                    Text("Picked At: 123456789")
                  ],
                ),
              ],
            ),
          ),
          Divider(
              height: 0, thickness: 2, color: Colors.white.withOpacity(0.5)),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircularImage(size: 90, imagePath: 'assets/images/person.png'),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeadingText(text: "RECIPIENT"),
                    SizedBox(height: 5),
                    Text("IMDAD RIND"),
                    Text("Turbat, Overseas Colony"),
                    Text("Picked At: 123456789")
                  ],
                ),
              ],
            ),
          ),
          Divider(
              height: 0, thickness: 2, color: Colors.white.withOpacity(0.5)),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: DateText(date: DateTime.now().toString()),
            ),
          ),
        ],
      ),
    );
  }
}
