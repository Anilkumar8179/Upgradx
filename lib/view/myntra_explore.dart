// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:upgradx_assignment/utills/reusable_wigets.dart';

class MyntraExplore extends StatefulWidget {
  const MyntraExplore({super.key});

  @override
  State<MyntraExplore> createState() => _MyntraExploreState();
}

class _MyntraExploreState extends State<MyntraExplore> {
  late PageController pageController;
  int currentPage = 0;
  late Timer time;
  final List<String> items = [
    'UNDER ₹1099',
    'UNDER ₹499',
    'UNDER ₹799',
    'UNDER ₹599',
    'UNDER ₹1199',
    'UNDER ₹499',
    'UNDER ₹699',
  ];
  List<String> items1 = [
    'MEN',
    'WOMEN',
    'KIDS',
    'FOOTWEAR',
    'BEAUTY',
    'ACCESSORIES',
    'HOME',
  ];

  @override
  void initState() {
    pageController = PageController(initialPage: currentPage);
    timer();
    super.initState();
  }

  List images = [
    'assets/men.jpeg',
    'assets/women.avif',
    'assets/kids.jpeg',
    'assets/footwear.png',
    'assets/Beauty.jpg',
  ];

  List images1 = [
    'assets/group-people-shopping.webp',
    'assets/profile_shoping_img.jpg',
    'assets/image_profile.jpeg',
    'assets/full-body-photo-excited-crazy.webp',
    'assets/myntra-sale-cover.png',
  ];
  List images2 = [
    'assets/shopping-download-png.png',
    'assets/shopping-png-hd.png',
    'assets/shopping-png-pic.png',
    'assets/images 5.jpeg',
    'assets/images4.jpeg',
  ];

  List images3 = [
    'assets/image 7.jpg',
    'assets/stock-photo-online-shopping-app-asian-woman8.jpg',
    'assets/shopping-citi-security-ltd-family-shopping-6.png',
    'assets/images 5.jpeg',
    'assets/shopping-png-hd.png',
    'assets/shopping-png-pic.png'
  ];
  List images4 = [
    'assets/image4(1).jpeg',
    'assets/image4(2).jpg',
    'assets/image(4)3.jpg',
    'assets/image(4)4.jpeg',
    'assets/image(4)5.avif',
    'assets/image(4)6.jpg'
  ];
  List images5 = [
    'assets/images5 (1).jpeg',
    'assets/images5 (2).jpeg',
    'assets/images 5(3).jpeg',
    'assets/images 5(4).jpeg',
    'assets/images5 (5).jpeg',
    'assets/images5 (6).jpeg'
  ];
  List images6 = [
    'assets/images7 (1).jpeg',
    'assets/images 7(2).jpeg',
    'assets/image7(3).webp',
    'assets/image7(4).jpg',
    'assets/images7 (5).jpeg',
  ];
  List images7 = [
    'assets/images6(1).jpeg',
    'assets/images 6(2).jpeg',
    'assets/images6(3).png',
    'assets/image6(4).webp',
    'assets/images6 (5).jpeg',
    'assets/images 6(6).jpeg'
  ];
  String button = '';
  void timer() {
    time = Timer.periodic(Duration(seconds: 2), (timer) {
      if (currentPage < images.length - 1) {
        currentPage++;
      } else {
        currentPage = 0;
      }
      pageController.animateToPage(currentPage,
          duration: Duration(seconds: 1), curve: Curves.easeIn);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: const [
          Icon(
            Icons.search,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.notifications,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.heart_broken,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.card_travel_rounded,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
        ],
        leading: Image.asset("assets/mynta_img.jpeg"),
        title: Text(
          "insider",
          style: TextStyle(color: Colors.orange),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
        
                children: [
                  Flexible(
                    flex: 4,
                    child: SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() {
                            button = 'Fashion';
                          });
                        },
                        style: OutlinedButton.styleFrom(
                          backgroundColor: button == 'Fashion'
                              ? Colors.black
                              : Colors.transparent,
                          side: BorderSide(color: Colors.black),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: txt(
                            giveText: 'Fashion',
                            color: button == 'Fashion'
                                ? Colors.white
                                : Colors.black),
                      ),
                    ),
                  ),
                  Spacer(),
                  Flexible(
                    flex: 4,
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                button == 'Beauty' ? Colors.black : Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  20,
                                ),
                                side: BorderSide(color: Colors.black)),
                          ),
                          onPressed: () {
                            setState(() {
                              button = 'Beauty';
                            });
                          },
                          child: txt(
                              giveText: 'Beauty',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: button == 'Beauty'
                                  ? Colors.white
                                  : Colors.black)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 120,
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(images[index]),
                            radius: 40,
                          ),
                          // txt(giveText:'Venkat'),
                          txt(
                              giveText: items1[index],
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.black)
                        ],
                      );
                    },
                    separatorBuilder: (context, index) => SizedBox(
                          width: 15,
                        ),
                    itemCount: images.length),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                alignment: Alignment.center,
                height: 30,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.black, borderRadius: BorderRadius.circular(5)),
                child: txt(
                    giveText: 'Sing Up For Exciting Deals',
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                alignment: Alignment.center,
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color.fromARGB(136, 236, 232, 232),
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        txt(
                            giveText: 'New User?',
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                        SizedBox(
                          height: 10,
                        ),
                        txt(
                            giveText: 'Flat ₹200 Off)',
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w400),
                      ],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        txt(
                            giveText: 'Code',
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                        txt(
                            giveText: 'Myntra 200',
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 300,
                child: PageView.builder(
                  controller: pageController,
                  itemCount: images.length,
                  onPageChanged: (change) {
                    setState(() {
                      currentPage = change;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Image.asset(images1[index]);
                  },
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.center,
                child: txt(
                    giveText: 'ALL- TIME FAVOURITES',
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w400),
                color: Colors.white,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.all(10),
                child: GridView.builder(
                    itemCount: images2.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.0, // Spacing between columns
                      mainAxisSpacing: 10.0,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  offset: const Offset(0, 3),
                                  color: Colors.black.withOpacity(0.3),
                                  spreadRadius: 2,
                                  blurRadius: 3)
                            ],
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                  height: 100,
                                  child: Image.asset(
                                    images2[index],
                                    fit: BoxFit.cover,
                                  )),
                              SizedBox(
                                height: 10,
                              ),
                              txt(
                                  giveText: items[index],
                                  fontSize: 24,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black)
                            ],
                          ));
                    }),
              ),
              SizedBox(
                height: 20,
              ),
              txt(
                  giveText: 'PRODUCT FINDER',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 200,
                child: ListView.separated(
                  itemCount: images.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => SizedBox(
                    width: 10,
                  ),
                  itemBuilder: (context, index) {
                    return SizedBox(
                        width: 150,
                        height: 180,
                        child: Image.asset(
                          images3[index],
                          fit: BoxFit.fitHeight,
                        ));
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 200,
                child: ListView.separated(
                  itemCount: images.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => SizedBox(
                    width: 10,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                        width: 150,
                        height: 180,
                        padding: const EdgeInsets.all(8),
                        color: Colors.amber[200],
                        child: Image.asset(
                          images4[index],
                          fit: BoxFit.fitHeight,
                        ));
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 200,
                child: ListView.separated(
                  itemCount: images.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => SizedBox(
                    width: 10,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                        width: 150,
                        height: 180,
                        padding: const EdgeInsets.all(8),
                        color: Colors.blue[200],
                        child: Image.asset(
                          images5[index],
                          fit: BoxFit.fitHeight,
                        ));
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 200,
                child: ListView.separated(
                  itemCount: images.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => SizedBox(
                    width: 10,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                        width: 150,
                        height: 180,
                        padding: const EdgeInsets.all(8),
                        color: Colors.green[400],
                        child: Image.asset(
                          images6[index],
                          fit: BoxFit.fitHeight,
                        ));
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListView.separated(
                itemCount: images.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                // scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => SizedBox(
                  width: 10,
                ),
                itemBuilder: (context, index) {
                  return Container(
                      // width: 150,
                      // height: 180,
                      padding: const EdgeInsets.all(8),
                      color: Colors.amber[200],
                      child: Image.asset(
                        images7[index],
                        fit: BoxFit.fitHeight,
                      ));
                },
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(right: 10, left: 10),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  alignment: Alignment.center,
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5)),
                  child: txt(
                      giveText: 'VIEW MORE PRODUCTS',
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
