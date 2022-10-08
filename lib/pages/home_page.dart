import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class HomePage extends StatelessWidget {
  double targetConsumption = 3200;
  double totalConsumed = 900;
  int volumeOfbottle = 700;

  // double progress_percent = 0;

  final style =
      TextStyle(color: Colors.black, fontSize: 50, fontWeight: FontWeight.w900);

  @override
  Widget build(BuildContext context) {

    return Container(
      // color: Colors.black,
      child: SafeArea(
          top: false,
          child: Scaffold(
              body: ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35), topRight: Radius.circular(35)),
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: <Widget>[
                WaveWidget(
                  backgroundColor: Colors.white,
                  config: CustomConfig(
                      gradients: [
                        [Color(0xFF072AA3), Color(0xFF1842DA)],
                        [Color(0xFF1871DA), Color(0xFF39B8FF)],
                        [Color(0xFF39B8FF), Color(0xFF3A88FE)],
                        [Color(0xFFAEFFFA), Color(0xFF00C2FD)],
                      ],
                      gradientBegin: Alignment.centerLeft,
                      gradientEnd: Alignment.centerRight,
                      durations: [3500, 19440, 10800, 6000],
                      heightPercentages: [
                        (100 - 20 - totalConsumed * 100 / targetConsumption) /
                            100,
                        (100 - 18 - totalConsumed * 100 / targetConsumption) /
                            100,
                        (100 - 15 - totalConsumed * 100 / targetConsumption) /
                            100,
                        (100 - 10 - totalConsumed * 100 / targetConsumption) /
                            100
                      ]),
                  size: Size(double.infinity, double.infinity),
                ),
                Padding(
                    padding: const EdgeInsets.all(30.0),
                    child:

                    CircularStepProgressIndicator(

                      totalSteps: (targetConsumption / volumeOfbottle).ceil(),
                      currentStep: (totalConsumed / volumeOfbottle).floor(),
                      width: 180,
                      height: 180,
                      stepSize: 12,

                      selectedColor: Color(0xFF0058DC),
                      unselectedColor: Color(0xFF001A76),
                      unselectedStepSize: 4,
                      roundedCap: (_, isSelected) => isSelected,




                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          // alignment: Alignment.center,
                          children: [
                            Countup(
                              begin: 0,
                              end: totalConsumed * 100 / targetConsumption,
                              duration: Duration(milliseconds: 1500),
                              style: GoogleFonts.barlowSemiCondensed(
                                  textStyle: style),
                              suffix: '%',
                              // curve: Curves.ease,
                            ),
                            Text(
                              '$totalConsumed ml of $targetConsumption ml',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300),
                            ),



                          ]),
                    ))
              ],
            ),
          ))),
    );
    throw UnimplementedError();
  }
}
