import 'package:flutter/material.dart';

class MomentAnalysisCard extends StatefulWidget {
  const MomentAnalysisCard({
    Key? key,
  }) : super(key: key);

  @override
  State<MomentAnalysisCard> createState() => _MomentAnalysisCardState();
}

class _MomentAnalysisCardState extends State<MomentAnalysisCard> {
  @override
  bool? sittoStand = false;
  bool? shoulderROM = false;
  bool? singleLegBalance = false;
  bool? shortPerformanceBattery = false;
  bool? twoMinuteStepTest = false;
  bool? timedUpandGo = false;

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  border: Border.all(color: const Color(0xFF1f1769)),
                ),
                margin: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                child: Column(
                  children: [
                    Container(
                      color: const Color(0xFF1f1769),
                      width: double.infinity,
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 20.0),
                        child: Text(
                          "Select Movement Analysis Overrides",
                          style: TextStyle(fontSize: 18.0, color: Colors.white),
                        ),
                      ),
                    ),
                    CheckboxListTile(
                      value: sittoStand,
                      onChanged: (sittostandchg) {
                        setState(() {
                          sittoStand = sittostandchg;
                        });
                      },
                      title: const Text("Sit to Stand"),
                      checkColor: Colors.green,
                      activeColor: Colors.white70,
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                    CheckboxListTile(
                      value: shoulderROM,
                      onChanged: (shoulderROMchg) {
                        setState(() {
                          shoulderROM = shoulderROMchg;
                        });
                      },
                      title: const Text("Shoulder ROM"),
                      checkColor: Colors.green,
                      activeColor: Colors.white70,
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                    CheckboxListTile(
                      value: singleLegBalance,
                      onChanged: (singleLegBalancechg) {
                        setState(() {
                          singleLegBalance = singleLegBalancechg;
                        });
                      },
                      title: const Text("Single Leg Balance"),
                      checkColor: Colors.green,
                      activeColor: Colors.white70,
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                    CheckboxListTile(
                      value: shortPerformanceBattery,
                      onChanged: (shortPerformanceBatterychg) {
                        setState(() {
                          shortPerformanceBattery = shortPerformanceBatterychg;
                        });
                      },
                      title: const Text("Short Performance Battery"),
                      checkColor: Colors.green,
                      activeColor: Colors.white70,
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                    CheckboxListTile(
                      value: twoMinuteStepTest,
                      onChanged: (twoMinuteStepTestchg) {
                        setState(() {
                          twoMinuteStepTest = twoMinuteStepTestchg;
                        });
                      },
                      title: const Text("Two Minute Step Test"),
                      checkColor: Colors.green,
                      activeColor: Colors.white70,
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                    CheckboxListTile(
                      value: timedUpandGo,
                      onChanged: (timedUpandGochg) {
                        setState(() {
                          timedUpandGo = timedUpandGochg;
                        });
                      },
                      title: const Text("Timed Up and Go"),
                      checkColor: Colors.green,
                      activeColor: Colors.white70,
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                  ],
                ))),
      ],
    );
  }
}
