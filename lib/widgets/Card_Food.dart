import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CardFood extends StatelessWidget {
  final List data;
  const CardFood({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      padding: const EdgeInsets.all(10),
      width: 142,
      height: 154,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(32)),
          color: Color(data[2])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            "Asset/icons/${data[0]}.svg",
            width: 50,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "${data[1]}".tr,
            style: TextStyle(
                fontFamily: "en", fontSize: 17, color: Color(data[3])),
          ),
        ],
      ),
    );
  }
}
