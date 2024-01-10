import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:kcalapp/screens/home.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomePage extends StatelessWidget {
  WelcomePage({super.key});
  final PageController scrollcontroller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset("Asset/icons/kcal.svg"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            height: 390,
            child: PageView(
              controller: scrollcontroller,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "Asset/images/1.svg",
                      width: 300,
                    ),
                    Text(
                      "1".tr,
                      style: const TextStyle(
                          fontFamily: "en",
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Text(
                        "2".tr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "en",
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.black.withOpacity(0.5)),
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("Asset/images/ol2.svg"),
                    Text(
                      "3".tr,
                      style: const TextStyle(
                          fontFamily: "en",
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Text(
                        "4".tr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "en",
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.black.withOpacity(0.5)),
                      ),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("Asset/images/ol3.svg"),
                    Text(
                      "5".tr,
                      style: const TextStyle(
                          fontFamily: "en",
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Text(
                        "6".tr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "en",
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.black.withOpacity(0.5)),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SmoothPageIndicator(
              controller: scrollcontroller, // PageController
              count: 3,
              effect: const WormEffect(
                  dotColor: Color(0xffFFC0B8),
                  activeDotColor: Color(0xffFF8473)), // your preferred effect
              onDotClicked: (index) {}),
          const SizedBox(
            height: 100,
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(HomePage());
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24)),
              primary: const Color(0xff91C788),
              onPrimary: Colors.white,
              minimumSize: const Size(290, 72),
            ),
            child: Text(
              "7".tr,
              style: const TextStyle(fontFamily: "en", fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("8".tr,
                  style: const TextStyle(
                      fontFamily: "en", color: Color(0xff7C7C7C))),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "9".tr,
                    style: const TextStyle(
                        fontFamily: "en", color: Color(0xff91C788)),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
