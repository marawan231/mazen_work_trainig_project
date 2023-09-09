import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mazen_project/constants.dart';
import 'package:mazen_project/screens/details_screen.dart';
import 'package:mazen_project/widgets/catelog_item.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              _buildHeadline(),
              const SizedBox(height: 20),
              _buildList(),
            ],
          ),
        ),
      ),
    );
  }

  _buildList() {
    return GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: 1,
        ),
        itemCount: popularitiesImages.length,
        itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailsScreen(),
                  ),
                );
              },
              child: CatalogItem(
                index: index,
              ),
            ));
  }

  _buildHeadline() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Catalog',
          style: TextStyle(
            color: Color(0xFF2E2D2D),
            fontSize: 24,
            fontFamily: 'NATS',
            fontWeight: FontWeight.w400,
            height: 0.83,
          ),
        ),
        SvgPicture.asset('assets/images/Vector.svg')
      ],
    );
  }

  _buildAppBar() {
    return AppBar(
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 20),
          child: Icon(Icons.search, color: Colors.black),
        ),
      ],
      centerTitle: false,
      backgroundColor: Colors.transparent,
      title: const Text('Bridal Bouquet',
          style: TextStyle(
            color: Color(0xFF2E2D2D),
            fontSize: 30,
            fontFamily: 'NATS',
            fontWeight: FontWeight.w400,
            // height: 0.80,
            // letterSpacing: -0.60,
          )),
    );
  }
}
