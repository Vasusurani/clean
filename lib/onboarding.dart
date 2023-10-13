import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:velocity_x/velocity_x.dart';

class onboarding extends StatelessWidget {
  const onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Stack(children: [
      Container(
        color: Colors.deepPurple,
      ),
      Container(
        width: context.screenWidth,
        height: context.percentHeight * 80,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60))),
        child: VStack([
          Padding(
              padding: const EdgeInsets.only(left: 45, top: 40),
              child: Image(
                image: AssetImage("image/cleaning man.jpeg"),
              )),
          Padding(
            padding: const EdgeInsets.only(left: 80, top: 70),
            child: Text(
              "Cleaning on Demand",
              style: TextStyle(fontSize: 25),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 20),
            child: Text(
                'Book an appointment in less than 60 seconds and get on the schedule as early as tomorrow.',
                style: TextStyle(color: Colors.black38, fontSize: 19)),
          )
        ]),
      ),
      Container(
        alignment: Alignment.bottomCenter,
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Column(children: [
            VStack([
              HStack([
                Padding(
                  padding: const EdgeInsets.only(bottom: 130),
                  child: VxBox().square(5).gray400.roundedFull.make(),
                ),
                10.widthBox,
                Padding(
                  padding: const EdgeInsets.only(bottom: 130),
                  child: VxBox().square(8).gray500.roundedFull.make(),
                ),
                10.widthBox,
                Padding(
                  padding: const EdgeInsets.only(bottom: 130),
                  child: VxBox().square(5).gray400.roundedFull.make(),
                ),
                10.widthBox
              ])
            ]),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: OutlinedButton(onPressed: () {}, child: Text('Skip')),
            )
          ]),
        ]),
      ),
    ]));
  }
}
