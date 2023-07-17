import 'package:flutter/material.dart';
import 'package:koupag/views/broadcast_view.dart';
import 'package:koupag/views/home_view.dart';
import 'package:koupag/views/organizations_view.dart';
import 'package:koupag/views/profile_view.dart';
import 'package:koupag/views/setting_view.dart';
import 'package:koupag/widgets/bottom_nev_bar.dart';
import 'package:koupag/widgets/koupag_appbar.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _index = 2;

  void toggle(value) => setState(() {
        _index = value;
      });

  Widget pagesNav(int index) {
    List pages = [
      // Navigator.push(
      //     context, MaterialPageRoute(builder: (context) => const HomePage())),
      const ProfileView(),
      const SettingsView(),
      const HomeView(),
      const BroadCastView(),
      const OrganizationsView(),
    ];
    return pages[index];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const KoupagAppbar(title: 'KOUPAG'),
      body: pagesNav(_index),
      bottomNavigationBar: BottomNevBar(
        onTap: (value) {
          toggle(value);
        },
        currentIndex: _index,
      ),
    );
  }
}
