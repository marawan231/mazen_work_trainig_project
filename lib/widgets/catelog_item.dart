import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mazen_project/constants.dart';

class CatalogItem extends StatelessWidget {
  const CatalogItem({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 170,
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x0A171439),
            blurRadius: 35,
            offset: Offset(0, 20),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Image.asset(
              popularitiesImages[index],
              fit: BoxFit.cover,
              width: double.infinity,
              height: 100,
            ),
          ),
          const SizedBox(height: 4),
          SizedBox(
            // width: 144,
            child: Text(
              popularitiesTitles[index],
              style: const TextStyle(
                color: Color(0xFF2E2D2D),
                fontSize: 20,
                fontFamily: 'NATS',
                fontWeight: FontWeight.w400,
                height: 0.90,
              ),
            ),
          ),
          const SizedBox(height: 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '\$85',
                style: TextStyle(
                  color: Color(0xFF545F70),
                  fontSize: 16,
                  fontFamily: 'NATS',
                  fontWeight: FontWeight.w400,
                  height: 1,
                ),
              ),
              SvgPicture.asset('assets/images/shopping-cart.svg')
            ],
          )
        ],
      ),
    );
  }
}
