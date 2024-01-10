import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:get/get_core/get_core.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:kcalapp/controllers/LanguageCon.dart';
import 'package:kcalapp/widgets/Card_Food.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final PageController scrollcontroller = PageController();
  final List listdata = [
    ["1", "17", 0xffFFF2F0, 0xff4D0A00],
    ["2", "18", 0xffEFF7EE, 0xff1C3418],
    ["3", "19", 0xffFFF8EB, 0xff4D3200]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              "Asset/icons/Home.svg",
              width: 36,
            ),
            SvgPicture.asset(
              "Asset/icons/Search.svg",
              width: 36,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              width: 70,
              height: 70,
              decoration: const BoxDecoration(
                color: Color(0xff91C788),
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              child: SvgPicture.asset(
                "Asset/icons/Scan.svg",
                width: 36,
              ),
            ),
            SvgPicture.asset(
              "Asset/icons/Heart.svg",
              width: 36,
            ),
            SvgPicture.asset(
              "Asset/icons/Profile.svg",
              width: 36,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              Text(
                "10".tr,
                style: const TextStyle(
                    fontFamily: "en", color: Color(0xff91C788), fontSize: 25),
              ),
              Text(
                "11".tr,
                style: const TextStyle(
                    fontFamily: "en", color: Color(0xff7B7B7B), fontSize: 15),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                width: 351.88,
                height: 169,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [
                        Color(0xffFFE0DC),
                        Color(0xffFFECC9),
                      ],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: GetBuilder<LanguageController>(
                  init: LanguageController(),
                  builder: (controller) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: controller.isArabic.value
                          ? MainAxisAlignment.start
                          : MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("13".tr,
                                textAlign: controller.isArabic.value
                                    ? TextAlign.right
                                    : TextAlign.left,
                                style: const TextStyle(
                                    fontFamily: "en",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xffFF806E))),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "12".tr,
                              textAlign: controller.isArabic.value
                                  ? TextAlign.right
                                  : TextAlign.left,
                              style: TextStyle(
                                  fontFamily: "en",
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black.withOpacity(0.5)),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                primary: const Color(0xffFF8473),
                                onPrimary: Colors.white,
                                minimumSize: const Size(30, 45),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    "14".tr,
                                    style: const TextStyle(
                                        fontFamily: "en", fontSize: 15),
                                  ),
                                  SvgPicture.asset(
                                    "Asset/icons/sa.svg",
                                    width: 20,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 35,
                        ),
                        SvgPicture.asset(
                          "Asset/images/2.svg",
                          width: 120,
                        ),
                      ],
                    );
                  },
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
                    activeDotColor: Color(0xffFF8473),
                  ),
                  onDotClicked: (index) {}),
              const SizedBox(
                height: 15,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(24.0),
                child: Stack(
                  clipBehavior: Clip.hardEdge,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15),
                      clipBehavior: Clip.hardEdge,
                      width: 351.88,
                      height: 100,
                      decoration: const BoxDecoration(
                          color: Color(0xff9E9BC7),
                          borderRadius: BorderRadius.all(Radius.circular(24))),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "15".tr,
                              style: const TextStyle(
                                  fontFamily: "en",
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                primary: const Color(0xffFFFFFF),
                                onPrimary: Colors.white,
                                minimumSize: const Size(104, 45),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    "14".tr,
                                    style: const TextStyle(
                                        fontFamily: "en",
                                        fontSize: 15,
                                        color: Color(0xff9E9BC7)),
                                  ),
                                  SvgPicture.asset("Asset/icons/sa.svg",
                                      width: 20, color: const Color(0xff9E9BC7)),
                                ],
                              ),
                            ),
                          ]),
                    ),
                    Positioned(
                      top: -170,
                      left: 200,
                      child: Container(
                        width: 300,
                        height: 300,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.1),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(200))),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: GetBuilder<LanguageController>(
                  init: LanguageController(),
                  builder: (controller) {
                    return Align(
                      alignment: controller.isArabic.value
                          ? Alignment.topLeft
                          : Alignment.bottomRight,
                      child: Text(
                        "16".tr,
                        style: const TextStyle(
                            fontFamily: "en", fontSize: 20, color: Colors.black),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 154,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CardFood(data: listdata[index]);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
