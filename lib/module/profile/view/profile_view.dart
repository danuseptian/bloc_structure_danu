import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profile View'),
      ),
      body: Center(
        child: Lottie.asset('asset/lottie/profile.json', height: 300),
      ),
    );
  }
}
