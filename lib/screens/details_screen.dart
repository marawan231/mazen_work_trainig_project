// ignore_for_file: deprecated_member_use

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mazen_project/constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int currentIndex = 0;
  final controller = PageController(viewportFraction: 0.8);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildSlider(),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                _buildTitleAndPrice(),
                const SizedBox(height: 4),
                _buildAvailability(),
                const SizedBox(height: 4),
                _buildRating(),
                const SizedBox(height: 20),
                const Divider(),
                const SizedBox(height: 20),
                _buildQuantity(),
                const SizedBox(height: 20),
                _buildTotal(),
                const SizedBox(height: 20),
                _buildButton(),
              ],
            ),
          ),
          // _buildIndicators(),
        ],
      ),
    );
  }

  _buildButton() {
    return Container(
      width: 205,
      height: 60,
      padding: const EdgeInsets.all(17),
      decoration: ShapeDecoration(
        color: const Color(0xFF9682B6),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/shopping-cart (1).svg',
              color: Colors.white,
            ),
            const SizedBox(width: 10),
            const Text(
              'Add to cart',
              style: TextStyle(
                color: Color(0xFFF4F4F4),
                fontSize: 24,
                fontFamily: 'NATS',
                fontWeight: FontWeight.w400,
                height: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildTotal() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Total',
          style: TextStyle(
            color: Color(0xFF2E2D2D),
            fontSize: 32,
            fontFamily: 'NATS',
            fontWeight: FontWeight.w400,
            height: 1,
            letterSpacing: -0.64,
          ),
        ),
        Text(
          '\$90',
          style: TextStyle(
            color: Color(0xFF9682B6),
            fontSize: 32,
            fontFamily: 'NATS',
            fontWeight: FontWeight.w400,
            height: 1,
            letterSpacing: -0.64,
          ),
        )
      ],
    );
  }

  _buildQuantity() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Quantity',
          textAlign: TextAlign.right,
          style: TextStyle(
            color: Color(0xFF2E2D2D),
            fontSize: 16,
            fontFamily: 'NATS',
            fontWeight: FontWeight.w400,
            height: 1.20,
          ),
        ),
        Container(
          width: 126,
          height: 32,
          padding: const EdgeInsets.all(2),
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: const Color(0x33818A98),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 40.67,
                height: 28,
                padding: const EdgeInsets.only(
                  top: 6,
                  left: 8,
                  right: 7.67,
                  bottom: 6,
                ),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7)),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 25,
                      height: 16,
                      child: Text(
                        '-',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF2E2D2D),
                          fontSize: 13,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w600,
                          height: 1.54,
                          letterSpacing: -0.08,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 40.67,
                height: 28,
                padding: const EdgeInsets.only(
                  top: 6,
                  left: 8,
                  right: 7.67,
                  bottom: 6,
                ),
                decoration: ShapeDecoration(
                  color: const Color(0xFFF4F4F4),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7)),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 25,
                      height: 16,
                      child: Text(
                        '1',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF2E2D2D),
                          fontSize: 13,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w500,
                          height: 1.54,
                          letterSpacing: -0.08,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 37.67,
                height: 28,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7)),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 25,
                      height: 16,
                      child: Text(
                        '+',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF2E2D2D),
                          fontSize: 13,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w500,
                          height: 1.54,
                          letterSpacing: -0.08,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  _buildRating() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Rating',
          textAlign: TextAlign.right,
          style: TextStyle(
            color: Color(0xFF2E2D2D),
            fontSize: 16,
            fontFamily: 'NATS',
            fontWeight: FontWeight.w400,
            height: 1.20,
          ),
        ),
        Image.asset('assets/images/Frame 82.png', width: 90)
      ],
    );
  }

  _buildTitleAndPrice() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Spark',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF2E2D2D),
            fontSize: 30,
            fontFamily: 'NATS',
            fontWeight: FontWeight.w400,
            height: 1.20,
          ),
        ),
        Text(
          '\$90',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF9682B6),
            fontSize: 30,
            fontFamily: 'NATS',
            fontWeight: FontWeight.w400,
            height: 0.63,
            letterSpacing: -0.24,
          ),
        )
      ],
    );
  }

  _buildAvailability() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Availability',
          textAlign: TextAlign.right,
          style: TextStyle(
            color: Color(0xFF2E2D2D),
            fontSize: 16,
            fontFamily: 'NATS',
            fontWeight: FontWeight.w400,
            height: 1.20,
          ),
        ),
        Text(
          'In Stock',
          textAlign: TextAlign.right,
          style: TextStyle(
            color: Color(0xFF1EC92F),
            fontSize: 18,
            fontFamily: 'NATS',
            fontWeight: FontWeight.w400,
            height: 1.20,
          ),
        )
      ],
    );
  }

  _buildSlider() {
    return Stack(
      // fit: StackFit.expand,
      children: [
        CarouselSlider(
          options: CarouselOptions(
            padEnds: false,
            viewportFraction: 1,
            aspectRatio: .9,
            // enlargeCenterPage: true,
            // enlargeFactor: 4,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
          items: detailsImages
              .map((e) => Image.asset(
                    e,
                    fit: BoxFit.cover,
                  ))
              .toList(),
        ),
        _buildIndicators(),
        Positioned(
            top: 70,
            right: 24,
            child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: SvgPicture.asset('assets/images/Icon_Сlose.svg'))),
      ],
    );
  }

  _buildIndicators() {
    return Positioned(
      bottom: 24,
      left: 0,
      right: 0,
      // top: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedSmoothIndicator(
            activeIndex: currentIndex,
            count: detailsImages.length,
            effect: ExpandingDotsEffect(
                activeDotColor: const Color(0xFF9682B6),
                dotHeight: 3,
                dotWidth: 70,
                expansionFactor: 1.1,
                dotColor: Colors.grey.shade300),
          )
        ],
      ),
    );
  }
}
