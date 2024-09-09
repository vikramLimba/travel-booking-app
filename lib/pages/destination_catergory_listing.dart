import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:travel_booking_app/models/desitnation_category_model.dart';
import 'package:travel_booking_app/models/desitnation_listing_model.dart';
// import 'package:travel_booking_app/models/destination_modal.dart';
import 'package:travel_booking_app/pages/destination_deatails_page.dart';

class DestinationCategoryListingPage extends StatefulWidget {
  final String title;
  const DestinationCategoryListingPage({super.key, required this.title});

  @override
  State<DestinationCategoryListingPage> createState() =>
      _DestinationCategoryListingPageState();
}

class _DestinationCategoryListingPageState
    extends State<DestinationCategoryListingPage> {
  int _selectedCategoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    final title = widget.title;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Icon(
                Icons.arrow_back,
                size: 36,
              ),
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 40, bottom: 10),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: const Image(
                  image: AssetImage("assets/icons/profile.jpg"),
                  fit: BoxFit.fill,
                )),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Text(
                title,
                style: const TextStyle(
                    fontSize: 40, height: 1.5, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 60,
              // width: double.infinity,
              child: ListView.builder(
                  padding: const EdgeInsets.only(left: 25),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount:
                      DesitnationCategoryModel.destinationCategories.length,
                  itemBuilder: (context, index) {
                    final model =
                        DesitnationCategoryModel.destinationCategories[index];
                    final selectedIndexOfContainer =
                        _selectedCategoryIndex == index;
                    return Padding(
                      padding:
                          const EdgeInsets.only(right: 15, top: 10, bottom: 10),
                      child: SizedBox(
                          // height: 38,
                          width:
                              80 + (5 * model.categoryName.length).toDouble(),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectedCategoryIndex = index;
                              });
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black54,
                                        blurRadius: 5,
                                        // spreadRadius: 4,
                                        blurStyle: BlurStyle.outer)
                                  ],
                                  color: selectedIndexOfContainer
                                      ? Colors.black
                                      : Colors.white,
                                  // border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(14)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    model.iconsData,
                                    color: selectedIndexOfContainer
                                        ? Colors.white
                                        : Colors.black,
                                    size: 18,
                                  ),
                                  Text(
                                    model.categoryName,
                                    style: TextStyle(
                                        color: selectedIndexOfContainer
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            ),
                          )),
                    );
                  }),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Wrap(
                spacing: 40,
                runSpacing: 60,
                children: List.generate(20, (index) {
                  final model = DesitnationListingModel.destinations[
                      index % DesitnationListingModel.destinations.length];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DestinatinDetails(
                                title: model.name, bannerIndex: index % 10)),
                      );
                    },
                    child: SizedBox(
                      height: 280,
                      width: MediaQuery.of(context).size.width - 235,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 220,
                            // width: 160,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  bottom: 18,
                                  top: 0,
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(80),
                                        topRight: Radius.circular(80),
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                    child: Image.asset(
                                      "assets/dests/dest_${index % 10}.jpg",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                            color: Colors.white, width: 1.9)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: SizedBox(
                                          height: 34,
                                          width: 34,
                                          child: Flag.fromCode(
                                            model.flagCode,
                                            fit: BoxFit.cover,
                                          )),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            model.name,
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.local_hotel_rounded,
                                size: 15,
                                color: Colors.grey[700],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                model.rooms.toString(),
                                style: TextStyle(
                                    color: Colors.grey.shade900, fontSize: 12),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Icon(
                                Icons.location_on_rounded,
                                size: 15,
                                color: Colors.grey[700],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                model.tours.toString(),
                                style: TextStyle(
                                    color: Colors.grey.shade900, fontSize: 12),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
