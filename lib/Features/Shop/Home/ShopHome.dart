import 'package:flutter/material.dart';
import 'package:t_store/Features/Shop/Home/Wedgit/HomeAppBar.dart';
import 'Wedgit/HomePageBackground.dart';
import 'Wedgit/SearchWidget.dart';

class ShopHome extends StatelessWidget {
  const ShopHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomePageBackground(
              child:Column(
                children: [
                  HomeAppBar(),
                  SearchWidget(
                    title: "Search in Store",
                  )
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}

