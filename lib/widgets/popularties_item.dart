import 'package:flutter/material.dart';

class PopularityItem extends StatelessWidget {
  const PopularityItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 311,
      height: 237,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: Colors.white,
      ),
      // margin: const EdgeInsets.all(12),
      child: Padding(
        padding: const EdgeInsets.only(top: 12, left: 12, right: 12),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(7),
              child: Image.asset(
                'assets/images/Rectangle 101.png',
                fit: BoxFit.cover,
                width: double.infinity,
                height: 150,
              ),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'SPARK',
                  style: TextStyle(
                    height: .1,
                    color: Color(0xFF9682B6),
                    fontSize: 30,
                    fontFamily: 'NATS',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Image.asset('assets/images/Frame 82.png', width: 90)
              ],
            ),
            const Row(
              children: [
                Text('\$90',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontFamily: 'NATS',
                      fontWeight: FontWeight.w500,
                      // height: 0.83,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
