import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:mazen_project/constants.dart';
import 'package:mazen_project/screens/catalog_screen.dart';

import '../widgets/custom_bottom_nav_bar.dart';
import '../widgets/popularties_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomButtonNavBar(
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
      backgroundColor: const Color(0xFFF4F4F4),
      appBar: _buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            _buildWelcomeSection(),
            _buildChoices(),
            _buildNeedHelp(),
            _buildCategories(),
            _buildPopularitesHeadline(),
            _buildPopularties(),
          ],
        ),
      ),
    );
  }

  _buildPopularties() {
    return SizedBox(
      height: 240,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const PopularityItem(),
          separatorBuilder: (context, index) => const SizedBox(width: 20),
          itemCount: 2),
    );
  }

  _buildPopularitesHeadline() {
    return const Padding(
      padding: EdgeInsets.only(top: 20, bottom: 20),
      child: Row(
        children: [
          Text(
            'Popularity',
            style: TextStyle(
              color: Color(0xFF2E2D2D),
              fontSize: 24,
              fontFamily: 'NATS',
              fontWeight: FontWeight.w400,
              height: 0.83,
            ),
          ),
        ],
      ),
    );
  }

  _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      title: Text("florist".toUpperCase(),
          style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              letterSpacing: 4.5,
              fontFamily: 'NATS')),
    );
  }

  _buildWelcomeSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text("Welcome!",
            style: TextStyle(
              fontSize: 33,
              fontFamily: 'NATS',
              fontWeight: FontWeight.w400,
            )),
        SvgPicture.asset(
          'assets/images/person.svg',
          height: 18,
          width: 18,
        )
      ],
    );
  }

  _buildChoices() {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: CustomSlidingSegmentedControl<int>(
        isStretch: true,
        customSegmentSettings: CustomSegmentSettings(),
        initialValue: 1,
        // fixedWidth: double.,
        children: const {
          1: Text('Wedding',
              style: TextStyle(
                // color: Colors.white,
                fontSize: 14,
                fontFamily: 'NATS',
                fontWeight: FontWeight.w400,
              )),
          2: Text('Decor',
              style: TextStyle(
                // color: Colors.white,
                fontSize: 14,
                fontFamily: 'NATS',
                fontWeight: FontWeight.w400,
              )),
          3: Text('Gift',
              style: TextStyle(
                // color: Colors.white,
                fontSize: 14,
                fontFamily: 'NATS',
                fontWeight: FontWeight.w400,
              )),
        },
        decoration: BoxDecoration(
          color: CupertinoColors.lightBackgroundGray,
          borderRadius: BorderRadius.circular(8),
        ),
        thumbDecoration: BoxDecoration(
          color: const Color(0xff9682B6),
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.3),
              blurRadius: 4.0,
              spreadRadius: 1.0,
              offset: const Offset(
                0.0,
                2.0,
              ),
            ),
          ],
        ),
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInToLinear,
        onValueChanged: (v) {
          // print(v);
        },
      ),
    );
  }

  _buildNeedHelp() {
    return Container(
      width: 361,
      height: 95,
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: const ShapeDecoration(
        color: Color(0xFF9682B6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(7),
            topRight: Radius.circular(7),
            bottomRight: Radius.circular(7),
          ),
        ),
      ),
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Need help?',
                      style: TextStyle(
                        color: Color(0xFFF4F4F4),
                        fontSize: 40,
                        fontFamily: 'NATS',
                        fontWeight: FontWeight.w400,
                        height: 1.01,
                      ),
                    ),
                    Text(
                      'Make an appointment or chat with us.',
                      style: TextStyle(
                        color: Color(0xFFF4F4F4),
                        fontSize: 16,
                        fontFamily: 'NATS',
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                      ),
                    ),
                  ],
                ),
                // const SizedBox(width: 73),
                Icon(
                  Icons.calendar_month_outlined,
                  color: Color(0xFFF4F4F4),
                  size: 45,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _buildCategories() {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SizedBox(
        height: 80,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CatalogScreen(),
                ),
              );
            },
            child: Column(
              children: [
                Image.asset(
                  categoryImages[index],
                  height: 50,
                  width: 50,
                ),
                Text(
                  categoryNames[index],
                  style: const TextStyle(
                    color: Color(0xFF9682B6),
                    fontSize: 16,
                    fontFamily: 'NATS',
                    fontWeight: FontWeight.w400,
                    height: 1.50,
                  ),
                ),
              ],
            ),
          ),
          separatorBuilder: (context, index) => const SizedBox(width: 20),
          itemCount: categoryImages.length,
        ),
      ),
    );
  }
}
