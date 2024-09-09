import 'dart:math';

import 'package:flag/flag.dart';

class DestinationModal {
  final String desinationNames;
  final List<FlagsCode> flagsList;

  DestinationModal({required this.desinationNames, required this.flagsList});

  static final List<DestinationModal> destination = [
    DestinationModal(desinationNames: "Quite\nPlaces", flagsList: [
      for (int i = 0; i < 4; i++)
        FlagsCode.values[Random.secure()
            .nextInt(FlagsCode.values.length)
            .clamp(1, FlagsCode.values.length - 1)]
    ]),
    DestinationModal(desinationNames: "Romantic\ntrip", flagsList: [
      for (int i = 0; i < 4; i++)
        FlagsCode.values[Random.secure()
            .nextInt(FlagsCode.values.length)
            .clamp(1, FlagsCode.values.length - 1)]
    ]),
    DestinationModal(desinationNames: "Family\nvacation", flagsList: [
      for (int i = 0; i < 4; i++)
        FlagsCode.values[Random.secure()
            .nextInt(FlagsCode.values.length)
            .clamp(1, FlagsCode.values.length - 1)]
    ]),
    DestinationModal(desinationNames: "Nature", flagsList: [
      for (int i = 0; i < 4; i++)
        FlagsCode.values[Random.secure()
            .nextInt(FlagsCode.values.length)
            .clamp(1, FlagsCode.values.length - 1)]
    ]),
    DestinationModal(desinationNames: "City", flagsList: [
      for (int i = 0; i < 4; i++)
        FlagsCode.values[Random.secure()
            .nextInt(FlagsCode.values.length)
            .clamp(1, FlagsCode.values.length - 1)]
    ]),
    DestinationModal(desinationNames: "Beach", flagsList: [
      for (int i = 0; i < 4; i++)
        FlagsCode.values[Random.secure()
            .nextInt(FlagsCode.values.length)
            .clamp(1, FlagsCode.values.length - 1)]
    ]),
    DestinationModal(desinationNames: "Mountain", flagsList: [
      for (int i = 0; i < 4; i++)
        FlagsCode.values[Random.secure()
            .nextInt(FlagsCode.values.length)
            .clamp(1, FlagsCode.values.length - 1)]
    ]),
  ];
}
