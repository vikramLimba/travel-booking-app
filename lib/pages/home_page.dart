import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:travel_booking_app/models/destination_modal.dart';
import 'package:travel_booking_app/pages/destination_catergory_listing.dart';
import 'package:video_player/video_player.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late PageController pageController;
  late TabController _tabController;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    pageController =
        PageController(initialPage: 0, keepPage: false, viewportFraction: 0.46);
    _tabController =
        TabController(length: DestinationModal.destination.length, vsync: this);

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  void _handlePageChanges(int currentIndex) {
    _tabController.index = currentIndex;
    setState(() {});
  }

  Widget _drawer() {
    return Drawer(
      width: 280,
      elevation: 50,
      shadowColor: Colors.black,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MyHomePage()),
          );
        },
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/icons/dr3.jpg",
                  ))),
          child: SingleChildScrollView(
            child: SizedBox(
              height: 790,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        //  BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black54,
                              blurRadius: 8,
                              spreadRadius: 4,
                              blurStyle: BlurStyle.outer)
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 50, top: 8, right: 8, bottom: 8),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "assets/icons/profile.jpg",
                                height: 50,
                                width: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Alexender cole',
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, top: 20, right: 20),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.home,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Home',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Explore',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.list,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Desitinations',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.calendar_today_rounded,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'My Events',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.mail,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Invite Friend',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.settings,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'Settings',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.account_box_outlined,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'About',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 215,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Icon(
                          Icons.logout_outlined,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Sign out',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/icons/mb3.jpg",
              ),
              fit: BoxFit.cover)),
      child: Scaffold(
          key: _scaffoldKey,
          drawer: _drawer(),
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            leadingWidth: 100,
            backgroundColor: Colors.transparent,
            leading: InkWell(
              onTap: () => _scaffoldKey.currentState!.openDrawer(),
              child: Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Stack(
                  children: [
                    Positioned(
                        bottom: 28,
                        child: Container(
                          height: 3,
                          width: 20,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(4)),
                        )),
                    Positioned(
                        bottom: 20,
                        child: Container(
                          height: 3,
                          width: 30,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(8)),
                        ))
                  ],
                ),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 40, bottom: 10),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: const Image(
                        image: AssetImage("assets/icons/profile.jpg"))),
              )
            ],
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 40),
                child: Text(
                  'Where do \nyou want \nto be?',
                  style: TextStyle(
                      fontSize: 50, fontWeight: FontWeight.w500, height: 1.5),
                ),
              ),
              // const Spacer(),
              SizedBox(
                  height: 270,
                  child: PageView.builder(
                      padEnds: false,
                      itemCount: DestinationModal.destination.length + 1,
                      onPageChanged: _handlePageChanges,
                      controller: pageController,
                      itemBuilder: (context, index) {
                        if (index == DestinationModal.destination.length) {
                          return const SizedBox(
                            width: 20,
                          );
                        }
                        final model = DestinationModal.destination[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) =>
                                        DestinationCategoryListingPage(
                                            title: model.desinationNames)));
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            margin: EdgeInsets.only(
                                bottom: 20,
                                left: 8,
                                right: 8,
                                top: _tabController.index == index ? 30 : 80),
                            decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black54,
                                      blurRadius: 8,
                                      spreadRadius: 4,
                                      blurStyle: BlurStyle.outer)
                                ],
                                color: _tabController.index == index
                                    ? Colors.white
                                    : Colors.black.withOpacity(0.8),
                                borderRadius: BorderRadius.circular(30)),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 20, bottom: 10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TweenAnimationBuilder(
                                      tween: Tween<double>(
                                          begin: _tabController.index == index
                                              ? 0
                                              : 1,
                                          end: _tabController.index == index
                                              ? 1
                                              : 0),
                                      duration:
                                          const Duration(milliseconds: 400),
                                      builder: (context, value, child) {
                                        return Text(
                                          model.desinationNames,
                                          style: TextStyle(
                                              fontSize: 20 + (8 * value),
                                              fontWeight: FontWeight.w500,
                                              color: ColorTween(
                                                      begin: Colors.white,
                                                      end: Colors.black)
                                                  .transform(value),
                                              height: 1.25),
                                        );
                                      }),
                                  // if (_tabController.index == index)
                                  TweenAnimationBuilder(
                                      tween: Tween<double>(
                                          begin: _tabController.index == index
                                              ? 0
                                              : 1,
                                          end: _tabController.index == index
                                              ? 1
                                              : 0),
                                      // tween: Tween<double>(begin: 0, end: 1),
                                      duration:
                                          const Duration(milliseconds: 400),
                                      builder: (context, value, child) {
                                        return Icon(
                                          Icons.arrow_downward_outlined,
                                          size: 20 + (15 * value),
                                          color: ColorTween(
                                                  begin: Colors.white,
                                                  end: Colors.black)
                                              .transform(value),
                                        );
                                      }),
                                  TweenAnimationBuilder(
                                      tween: Tween<double>(
                                          begin: _tabController.index == index
                                              ? 0
                                              : 1,
                                          end: _tabController.index == index
                                              ? 1
                                              : 0),
                                      duration:
                                          const Duration(milliseconds: 400),
                                      builder: (context, value, child) {
                                        final borderColor = ColorTween(
                                                begin: Colors.black,
                                                end: Colors.white)
                                            .transform(value);
                                        return SizedBox(
                                          height: 35,
                                          child: Stack(
                                            children: [
                                              for (int i = 0; i < 4; i++)
                                                Positioned(
                                                    left: i * 20,
                                                    top: 0,
                                                    height: 30 + (5 * value),
                                                    width: 30 + (5 * value),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          border: Border.all(
                                                              color:
                                                                  borderColor!,
                                                              width: 1.9)),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                        child: Flag.fromCode(
                                                          model.flagsList[i],
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    )),
                                              Positioned(
                                                  left: 4 * 20,
                                                  top: 0,
                                                  height: 30 + (5 * value),
                                                  width: 40 + (10 * value),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: ColorTween(
                                                                begin: Colors
                                                                    .white,
                                                                end: Colors
                                                                    .black)
                                                            .transform(value),
                                                      ),
                                                    ),
                                                  ))
                                            ],
                                          ),
                                        );
                                      })
                                ],
                              ),
                            ),
                          ),
                        );
                      })),
            ],
          )),
    );
  }
}

class Navigationdrawer extends StatelessWidget {
  Navigationdrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      backgroundColor: Colors.red,
    );
  }
}
