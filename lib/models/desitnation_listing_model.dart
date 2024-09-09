import 'dart:math';

import 'package:flag/flag.dart';

class DesitnationListingModel {
  final String name;
  final FlagsCode flagCode;
  final int rooms;
  final int tours;

  DesitnationListingModel(
      {required this.name,
      required this.flagCode,
      required this.rooms,
      required this.tours});

  static List<DesitnationListingModel> destinations = [
    DesitnationListingModel(
        name: "Valeria",
        flagCode:
            FlagsCode.values[Random.secure().nextInt(FlagsCode.values.length)],
        rooms: Random.secure().nextInt(50) + 10,
        tours: Random.secure().nextInt(3) + 2),
    DesitnationListingModel(
        name: "Montara",
        flagCode:
            FlagsCode.values[Random.secure().nextInt(FlagsCode.values.length)],
        rooms: Random.secure().nextInt(50) + 10,
        tours: Random.secure().nextInt(3) + 2),
    DesitnationListingModel(
        name: "Andoria",
        flagCode:
            FlagsCode.values[Random.secure().nextInt(FlagsCode.values.length)],
        rooms: Random.secure().nextInt(50) + 10,
        tours: Random.secure().nextInt(3) + 2),
    DesitnationListingModel(
        name: "Seraphine",
        flagCode:
            FlagsCode.values[Random.secure().nextInt(FlagsCode.values.length)],
        rooms: Random.secure().nextInt(50) + 10,
        tours: Random.secure().nextInt(3) + 2),
    DesitnationListingModel(
        name: "Elmaris",
        flagCode:
            FlagsCode.values[Random.secure().nextInt(FlagsCode.values.length)],
        rooms: Random.secure().nextInt(50) + 10,
        tours: Random.secure().nextInt(3) + 2),
    DesitnationListingModel(
        name: "Novara",
        flagCode:
            FlagsCode.values[Random.secure().nextInt(FlagsCode.values.length)],
        rooms: Random.secure().nextInt(50) + 10,
        tours: Random.secure().nextInt(3) + 2),
    DesitnationListingModel(
        name: "Drakonia",
        flagCode:
            FlagsCode.values[Random.secure().nextInt(FlagsCode.values.length)],
        rooms: Random.secure().nextInt(50) + 10,
        tours: Random.secure().nextInt(3) + 2),
    DesitnationListingModel(
        name: "Aurinia",
        flagCode:
            FlagsCode.values[Random.secure().nextInt(FlagsCode.values.length)],
        rooms: Random.secure().nextInt(50) + 10,
        tours: Random.secure().nextInt(3) + 2),
    DesitnationListingModel(
        name: "Zylanthia",
        flagCode:
            FlagsCode.values[Random.secure().nextInt(FlagsCode.values.length)],
        rooms: Random.secure().nextInt(50) + 10,
        tours: Random.secure().nextInt(3) + 2),
    DesitnationListingModel(
        name: "Kryndor",
        flagCode:
            FlagsCode.values[Random.secure().nextInt(FlagsCode.values.length)],
        rooms: Random.secure().nextInt(50) + 10,
        tours: Random.secure().nextInt(3) + 2),
  ];
}
