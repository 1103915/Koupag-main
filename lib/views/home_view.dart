import 'package:flutter/material.dart';
import 'package:koupag/controllers/auth_controller.dart';
import 'package:koupag/widgets/custom_listtile.dart';
import 'package:koupag/widgets/donation_listtile.dart';
import 'package:koupag/widgets/donation_status.dart';
import 'package:koupag/widgets/koupag_empty.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          DonationStatus(
            value: 0.10,
            donationDate: DateTime.now(),
          ),
          const DonationListtile(),
          const KoupagEmpty(text: "no requst found"),
          CustomListTile(
            ontap: () async {
              AuthController _authController = AuthController();
              print(await _authController.userTypes());
            },
            icon: Icons.add_circle,
            title: 'Create Donation',
            subTitle: 'creates a request for donation',
          ),
          CustomListTile(
            ontap: () {},
            icon: Icons.recycling_rounded,
            title: 'Previous Records',
            subTitle: 'View privous records',
          ),
        ],
      ),
    );
  }
}
