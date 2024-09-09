import 'package:flutter/material.dart';

class DesitnationCategoryModel {
  final String categoryName;
  final IconData iconsData;

  DesitnationCategoryModel(
      {required this.categoryName, required this.iconsData});

  static List<DesitnationCategoryModel> destinationCategories = [
    DesitnationCategoryModel(
        categoryName: 'All', iconsData: Icons.grid_view_rounded),
    DesitnationCategoryModel(
        categoryName: "City", iconsData: Icons.location_city),
    DesitnationCategoryModel(
        categoryName: "Beach", iconsData: Icons.beach_access),
    DesitnationCategoryModel(
        categoryName: "Mountain", iconsData: Icons.terrain),
    DesitnationCategoryModel(
        categoryName: "Desert", iconsData: Icons.landscape),
    DesitnationCategoryModel(
        categoryName: 'Forest', iconsData: Icons.eco_rounded),
    DesitnationCategoryModel(categoryName: 'River', iconsData: Icons.alt_route),
    DesitnationCategoryModel(
        categoryName: "Island", iconsData: Icons.landscape),
  ];
}
