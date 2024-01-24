import 'package:flutter/material.dart';
import 'package:geegpay_project/constants.dart';
import 'package:geegpay_project/generated/assets.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Sidebar
          const Sidebar(),

          // Main content
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 88,
                  width: double.infinity,
                  color: Colors.redAccent,
                  child: const Row(),
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        height: 376,
                        color: Colors.greenAccent,
                        child: const Row(),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 376,
                        color: Colors.yellowAccent,
                        child: const Row(),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        height: 376,
                        color: Colors.purpleAccent,
                        child: const Row(),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 376,
                        color: Colors.blueGrey,
                        child: const Row(),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    // Implement your sidebar UI here
    return Container(
      width: 80,
      height: 876,
      // color: Colors.grey[200],
      color: bgColor,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            NavItems(
              imageString: Assets.assetsLogo,
            ),
            NavItems(
              imageString: Assets.assetsMenu,
            ),
            NavItems(
              imageString: Assets.assetsAnalytics,
            ),
            NavItems(
              imageString: Assets.assetsProfile,
            ),
            NavItems(
              imageString: Assets.assetsGiftbox,
            ),
            NavItems(
              imageString: Assets.assetsAnaysis,
            ),
            NavItems(
              imageString: Assets.assetsNotifications,
            ),
           Image.asset(Assets.assetsThemeswitch,width: 50,)
          ],
        ),
      ),
    );
  }
}

class NavItems extends StatelessWidget {
  String imageString;

  NavItems({super.key, required this.imageString});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset(
        imageString,
        width: 40,
        height: 40,
      ),
    );
  }
}
