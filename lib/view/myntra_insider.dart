import 'package:flutter/material.dart';
import 'package:upgradx_assignment/view/myntra_explore.dart';

import '../utills/reusable_wigets.dart';

class MyntraInsider extends StatelessWidget {
  const MyntraInsider({super.key});

  @override
  Widget build(BuildContext context) {
    List images = [
      'assets/group-people-shopping.webp',
      'assets/profile_shoping_img.jpg',
      'assets/image_profile.jpeg',
      'assets/full-body-photo-excited-crazy.webp',
      'assets/myntra-sale-cover.png',
    ];

    List title = [
      'Get Myntra Vocher worth Rs.500',
      'Get Levi"s worth Rs.500',
      'Get SonyLiv Premium 1 Month Subscription',
      'Get Tokyo Talkies Vocher worth Rs.400',
      'Get FLAT 12% OFF on Flipkart Flight Bookings'
    ];
    return Scaffold(
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return const MyntraExplore();
            },
          ));
        },
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          alignment: Alignment.center,
          height: 40,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.redAccent, borderRadius: BorderRadius.circular(5)),
          child: txt(
              giveText: 'Continue Shopping',
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w400),
        ),
      ),
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        title: txt(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            giveText: "MYNTRA INSIDER",
            color: Colors.black),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              SizedBox(
                  height: 500,
                  width: 500,
                  child: Image.asset(
                    "assets/images (1).jpeg",
                    fit: BoxFit.fitHeight,
                  )),
              txt(
                  giveText: "iNISIDER",
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Colors.orange),
              txt(
                  giveText: "iNISIDER",
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Colors.orange)
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: txt(
                giveText: "Hi Anil",
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.orange),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: txt(
                giveText:
                    "We're pleased to see your insterst in in Insider program",
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.orange),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: txt(
                giveText: "you're just a few purchases away from your goal!",
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.grey),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                txt(
                    giveText: "How To Get There",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
                Image.asset(
                  "assets/images.jpeg",
                  height: 30,
                )
              ],
            ),
          ),
          const SizedBox(height: 15),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.blueGrey.withOpacity(0.4),
                borderRadius: BorderRadius.circular(10)),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/king.png",
                    height: 40,
                    width: 40,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      txt(
                          giveText: "₹0",
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                      txt(
                          giveText: "you've spent",
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      txt(
                          giveText: "₹7000",
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                      txt(
                          giveText: "Goal",
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: Colors.grey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/king.png",
                    height: 40,
                    width: 40,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      txt(
                          giveText: "1/5",
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                      txt(
                          giveText: "Your Orders",
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      txt(
                          giveText: "5",
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                      txt(
                          giveText: "Goal",
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey),
                    ],
                  )
                ],
              )
            ]),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            color: Colors.white,
            child: Row(
              children: [
                const Icon(Icons.info_outlined),
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: 200,
                  child: RichText(
                      text: const TextSpan(children: [
                    TextSpan(
                      text: "You nedd to",
                      style: TextStyle(fontSize: 13, color: Colors.black45),
                    ),
                    TextSpan(
                      text: "shop for",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Colors.black),
                    ),
                    TextSpan(
                      text: "₹7000 more ",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: Colors.black),
                    ),
                    TextSpan(
                      text: "and palce ",
                      style: TextStyle(fontSize: 13, color: Colors.black45),
                    ),

                    //keep mobile visible
                    TextSpan(
                      text: "4 more orders",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                          color: Colors.black),
                    ),
                    TextSpan(
                      text: "to reach your goals ",
                      style: TextStyle(fontSize: 13, color: Colors.black45),
                    ),
                  ])),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(padding: EdgeInsets.only(left: 10,right: 10),
         child:txt(
              giveText:
                  "Note: Recent purchases will onley reflect in tha goal once the return the window is over",
              fontSize: 16,
              color: Colors.grey),
          
          
          ),

         
          const SizedBox(
            height: 30,
          ),
         Padding(padding: EdgeInsets.only(left: 10,right: 10),
         child:txt(
              giveText: "Benefits Of Joining The program",
              fontSize: 20,
              color: Colors.orange,
              fontWeight: FontWeight.w700),
         
         ),

         
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              const CircleAvatar(
                radius: 30,
                child: Icon(Icons.lock_clock),
              ),
              const SizedBox(
                width: 10,
              ),
               
              txt(
                  giveText: "Early Accesed to The Sales",
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.grey,
          ),
          Row(
            children: [
              const CircleAvatar(
                radius: 30,
                child: Icon(Icons.control_point_duplicate),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 200,
                child: txt(
                    giveText: "Insider Exclusive Rewards & Benifits",
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.grey,
          ),
          Row(
            children: [
              const CircleAvatar(
                radius: 30,
                child: Icon(Icons.phone_in_talk_outlined),
              ),
              const SizedBox(
                width: 10,
              ),
              txt(
                  giveText: "Priority Customer Support",
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.grey,
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: txt(
                giveText: "How does it work",
                fontSize: 20,
                color: Colors.orange,
                fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: txt(
                giveText: "Earn Supercoins with every purchase.",
                fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: txt(
                giveText: "You can get upto 3 SuperConis for every ₹100 spent",
                fontSize: 16,
                color: Colors.grey,
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            // height: 300,
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: const BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            child: Column(children: [
              // Container(
              //   height: 20,
              //   width: 100,
              //   padding: const EdgeInsets.all(10),
              //   color: Colors.redAccent,
              //   child: txt(giveText: 'start here'),
              // ),
              // VerticalDivider(color: Colors.redAccent,)
              const Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.orange,
                    radius: 20,
                    child: Icon(
                      Icons.thunderstorm_rounded,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                      width: 120,
                      child: Divider(
                        color: Colors.orange,
                        height: 20,
                        thickness: 10,
                      )),
                  CircleAvatar(
                    backgroundColor: Colors.orange,
                    radius: 20,
                    child: Icon(
                      Icons.thunderstorm_rounded,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                      width: 120,
                      child: Divider(
                        color: Colors.orange,
                        height: 20,
                        thickness: 10,
                      )),
                  CircleAvatar(
                    backgroundColor: Colors.orange,
                    radius: 20,
                    child: Icon(
                      Icons.thunderstorm_rounded,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      txt(
                          giveText: 'Select',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                      txt(
                          giveText: 'Shop for 7k \n to enroll',
                          fontSize: 14,
                          color: Colors.grey)
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      txt(
                          giveText: 'Select',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                      txt(
                          giveText: 'Shop for 7k \n to enroll',
                          fontSize: 14,
                          color: Colors.grey)
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      txt(
                          giveText: 'Select',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                      txt(
                          giveText: 'Shop for 7k \n to enroll',
                          fontSize: 14,
                          color: Colors.grey)
                    ],
                  )
                ],
              ),
            ]),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.black87,
                  child: Icon(
                    Icons.arrow_upward_sharp,
                    color: Colors.orange,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                txt(
                    giveText: 'shop on Myntra to Upgrade your tier',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: txt(
                giveText: 'Rewards',
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.orange),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: txt(
                giveText: 'use your SupserCoins to get exciting rewards',
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.grey),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 270,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: images.length,
              shrinkWrap: true,
              separatorBuilder: (context, index) => const SizedBox(
                width: 15,
              ),
              itemBuilder: (context, index) {
                return Container(
                  // padding:EdgeInsets.only(bottom: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Column(
                    children: [
                      Image.asset(
                        images[index],
                        height: 200,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      txt(
                          giveText: title[index],
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/mynta_img.jpeg",
                height: 20,
                width: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              txt(
                  giveText: 'iNSIDER',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.orange),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Center(
            child: txt(
                giveText: 'Fashion Advice| VIP Access|Extra Savings',
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.white),
          ),

          const SizedBox(
            height: 30,
          )
        ]),
      ),
    );
  }
}
