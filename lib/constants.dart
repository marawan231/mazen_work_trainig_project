import 'package:flutter/material.dart';
import 'package:mazen_project/screens/catalog_screen.dart';
import 'package:mazen_project/screens/home_screen.dart';

List<String> categoryImages = [
  'assets/images/Frame 288.png',
  'assets/images/Rectangle 96.png',
  'assets/images/Rectangle 97.png',
  'assets/images/Rectangle 98.png',
  'assets/images/Rectangle 95.png',
];
List<String> popularitiesImages = [
  'assets/images/evie-s-r_nBHZWXtoU-unsplash.png',
  'assets/images/evie-s-r_nBHZWXtoU-unsplash-1.png',
  'assets/images/evie-s-r_nBHZWXtoU-unsplash-2.png',
  'assets/images/evie-s-r_nBHZWXtoU-unsplash-3.png',
  'assets/images/evie-s-r_nBHZWXtoU-unsplash-4.png',
  'assets/images/evie-s-r_nBHZWXtoU-unsplash-5.png',
];

List<String> popularitiesTitles = [
  'Impression',
  'Authentic',
  'Spark',
  'Magic',
  'White',
  'Soft',

];
List<String> detailsImages = [
  'assets/images/Rectangle 101.png',
  'assets/images/Rectangle 101.png',
  'assets/images/Rectangle 101.png',
  'assets/images/Rectangle 101.png',
];
List<String> categoryNames = [
  'All',
  'Bouquet',
  'Table',
  'Aisle',
  'Accessories',
];
List<String> navBarImages = [
  'assets/images/Frame 308.svg',
  'assets/images/Frame 314.svg',
  'assets/images/Frame 312.svg',
  'assets/images/Frame 310.svg',
];
List<String> navBarTitles = [
  'Home',
  'Catalog',
  'Chat',
  'Cart',
];
int selectedIndex = 0;

List<Widget> screens = [
  const HomeScreen(),
  const CatalogScreen(),
  const HomeScreen(),
  const HomeScreen(),

  // const ChatScreen(),
  // const CartScreen(),
];
