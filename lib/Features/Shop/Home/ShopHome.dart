import 'package:flutter/material.dart';
import 'Wedgit/HomePageBackground.dart';

class ShopHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomePageBackground(),
          ],
        ),
      ),
    );
  }
}
