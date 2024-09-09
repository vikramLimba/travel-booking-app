import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_booking_app/models/desitnation_listing_model.dart';
import 'package:travel_booking_app/utils/colors.dart';

class DestinatinDetails extends StatefulWidget {
  final String title;
  final int bannerIndex;
  const DestinatinDetails(
      {super.key, required this.title, required this.bannerIndex});

  @override
  State<DestinatinDetails> createState() => _DestinatinDetailsState();
}

class _DestinatinDetailsState extends State<DestinatinDetails>
    with SingleTickerProviderStateMixin {
  final ValueNotifier _valueNotifier = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.offWhite,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 380,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                      child: Image.asset(
                        "assets/dests/dest_${widget.bannerIndex}.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    top: 300,
                    child: Container(
                      height: 70,
                      width: 50 + (widget.title.length * 20),
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black,
                                blurRadius: 10,
                                blurStyle: BlurStyle.outer)
                          ],
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.transparent),
                      child: Center(
                        child: Text(
                          widget.title,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 56,
                    right: 0,
                    left: 8,
                    // bottom: 0
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: const Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Icon(
                                Icons.arrow_back,
                                size: 36,
                              ),
                            )),
                        GestureDetector(
                          onTap: () {
                            _valueNotifier.value = !_valueNotifier.value;
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10, right: 40),
                            child: Container(
                                padding: EdgeInsets.all(4),
                                height: 32,
                                width: 32,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(.5),
                                        blurRadius: 15,
                                        spreadRadius: 1,
                                        blurStyle: BlurStyle.normal)
                                  ],
                                ),
                                child: ValueListenableBuilder(
                                  valueListenable: _valueNotifier,
                                  builder: (context, isFavourite, child) {
                                    return AnimatedSwitcher(
                                      duration:
                                          const Duration(milliseconds: 500),
                                      switchInCurve: Curves.easeIn,
                                      switchOutCurve: Curves.easeOut,
                                      child: isFavourite
                                          ? SvgPicture.asset(
                                              "assets/icons/red-heart.svg",
                                              fit: BoxFit.cover,
                                            )
                                          : const Icon(
                                              Icons.favorite_border_rounded,
                                              size: 24,
                                            ),
                                    );
                                  },
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 230,
                      // width: 180,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black54,
                                blurRadius: 8,
                                blurStyle: BlurStyle.outer)
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 40, left: 20),
                                    child: Image.asset(
                                      "assets/icons/camp.png",
                                      // width: 60,
                                      height: 70,
                                    ),
                                  ),
                                  Positioned(
                                    right: 0,
                                    top: 30,
                                    child: Image.asset(
                                      "assets/icons/aeroplane.png",
                                      // width: 40,
                                      height: 20,
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 30,
                                ),
                                child: Image.asset(
                                  "assets/icons/suitcase.png",
                                  width: 60,
                                  height: 60,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              "Choose \ndates",
                              style: TextStyle(
                                  fontSize: 28, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          // height: 110,
                          // width: 180,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black54,
                                    blurRadius: 8,
                                    spreadRadius: 4,
                                    blurStyle: BlurStyle.outer)
                              ],
                              // color: Colors.white,
                              // border: Border.all(color: Colors.black38),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Mon, ${Random.secure().nextInt(10) + 10} Sep",
                                  style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "${Random.secure().nextInt(10) + 20}°",
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    const Icon(Icons.thunderstorm_outlined)
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black54,
                                    blurRadius: 8,
                                    spreadRadius: 4,
                                    blurStyle: BlurStyle.outer)
                              ],
                              // color: Colors.white,
                              // border: Border.all(color: Colors.black38),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Price form",
                                      style: TextStyle(
                                          color: Colors.black38,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "\$${Random.secure().nextInt(30) + 200}",
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                                Container(
                                    height: 60,
                                    width: 10,
                                    decoration: BoxDecoration(
                                        color: Colors.black12,
                                        border:
                                            Border.all(color: Colors.black54),
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        for (int i = 0;
                                            i < Random.secure().nextInt(4) + 1;
                                            i++)
                                          Container(
                                            height: 14,
                                            width: 8,
                                            decoration: BoxDecoration(
                                                color: Colors.lightGreen,
                                                borderRadius:
                                                    BorderRadius.circular(8)),
                                          )
                                      ],
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25, bottom: 25),
              child: Text(
                "Hotel offers »",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ),
            HotelOffers(
              shiftIndex: Random.secure().nextInt(5),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25, bottom: 25),
              child: Text(
                "Popular tours »",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ),
            HotelOffers(
              shiftIndex: Random.secure().nextInt(5),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}

class HotelOffers extends StatelessWidget {
  final int shiftIndex;
  const HotelOffers({
    super.key,
    this.shiftIndex = 0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
          padding: const EdgeInsets.only(left: 25),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            final rating =
                (Random.secure().nextInt(2) + 2) + Random.secure().nextDouble();
            final model = DesitnationListingModel
                .destinations[index % (Random.secure().nextInt(10) + 1)];
            return GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DestinatinDetails(
                          title: model.name,
                          bannerIndex: (index + shiftIndex) % 10)),
                );
              },
              child: Container(
                margin: const EdgeInsets.only(right: 20),
                height: 200,
                width: 240,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 160,
                      width: double.infinity,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          "assets/dests/dest_${(index + shiftIndex) % 10}.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 20,
                          width: 40,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: ColoredBox(
                              color: Colors.lightGreen,
                              child: Center(
                                child: Text(
                                  rating.toStringAsFixed(1),
                                  style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        for (int i = 0; i < 5; i++)
                          Icon(
                            Icons.star,
                            color: i < rating ? Colors.black87 : Colors.black12,
                          )
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
