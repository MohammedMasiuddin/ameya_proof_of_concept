import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ameya',
      theme: ThemeData(
        fontFamily: 'Segoe UI',
      ),
      home: MyHomePage(title: 'Ameya'),
    );
  }
}

// Home Page
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
            backgroundColor: const Color(0xFF1f1769),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.menu))
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Container(
                      margin: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                      padding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 50.0),
                      color: const Color(0xFFeeedf6),
                      child: const Text(
                        "Create/Edit a Participant Profile",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24.0, fontWeight: FontWeight.w700),
                      ),
                    )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 20.0),
                      child: const Text(
                        "Participant Settings",
                        style: TextStyle(
                            fontSize: 24.0, fontWeight: FontWeight.w700),
                      ),
                    )),
                  ],
                ),
                MomentAnalysisCard(),
                GarminDevicesCard(),
                SelectSurveyCard()
              ],
            ),
          )),
    );
  }
}

class SelectSurveyCard extends StatefulWidget {
  const SelectSurveyCard({
    Key? key,
  }) : super(key: key);

  @override
  State<SelectSurveyCard> createState() => _SelectSurveyCardState();
}

class Survey{
  String surveyname;
  bool? status;

  Survey({required this.surveyname, this.status });

}

class _SelectSurveyCardState extends State<SelectSurveyCard> {

  final ScrollController _scrollServeyController = ScrollController();
  List<Survey> devices = [
    Survey(surveyname: "Survey 1 (version 1.1)", status: true),
    Survey(surveyname:  "Survey 2 (version 1.2)",status: false),
    Survey(surveyname: "Survey 3 (version 1.3)", status: true),
    Survey(surveyname:  "Survey 4 (version 1.4)",status: false)
  ];


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
            child: Container(
                margin: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 50.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  border: Border.all(color: const Color(0xFF1f1769)),
                ),
                child: Column(
                  children: [
                    Container(
                      color: const Color(0xFF1f1769),
                      width: double.infinity,
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 20.0),
                        child: Text(
                          "Select Surveys",
                          style: TextStyle(fontSize: 18.0, color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 20.0),
                        child: IntrinsicHeight(
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children:  [   const Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Search Surveys",
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.horizontal(left: Radius.circular(5),right: Radius.zero),
                                      borderSide: BorderSide(width: 2,color: Color(0xFF1f1769),style: BorderStyle.solid )
                                    ),
                                  ),
                                ),
                              ),
                                Container(
                                    color: Colors.purple,
                                    child:IconButton(onPressed: (){}, icon: Icon(Icons.search))
                                ),]
                          ),
                        ),
                      ),
                    ),
                    const Divider(
                        color: Color(0xFF1f1769),
                        height: 5,
                        thickness: 2),
                    Container(
                      height: 150,
                      child: Scrollbar(
                        thumbVisibility: true,
                        controller: _scrollServeyController,
                        child: ListView(
                            controller: _scrollServeyController,
                            scrollDirection: Axis.vertical,
                            children: devices.map((e) {
                              return CheckboxListTile(
                                value: e.status,
                                onChanged: (sittostandchg) {
                                  setState(() {
                                    e.status = sittostandchg;
                                  });
                                },
                                title: Text(e.surveyname),
                                checkColor: Colors.green,
                                activeColor: Colors.white70,
                                controlAffinity: ListTileControlAffinity.leading,
                              );
                            }).toList()),
                      ),
                    ),
                  ],
                ))),
      ],
    );
  }
}

class GarminDevicesCard extends StatefulWidget {
  const GarminDevicesCard({
    Key? key,
  }) : super(key: key);

  @override
  State<GarminDevicesCard> createState() => _GarminDevicesCardState();
}

class _GarminDevicesCardState extends State<GarminDevicesCard> {
  List<String> devices = ["Active Device ID", "Device Id #2", "Device id #3"];
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
            child: Container(
                margin: const EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 50.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  border: Border.all(color: const Color(0xFF1f1769)),
                ),
                child: Column(
                  children: [
                    Container(
                      color: const Color(0xFF1f1769),
                      width: double.infinity,
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 20.0),
                        child: Text(
                          "Enter Garmin Device ID",
                          style: TextStyle(fontSize: 18.0, color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      color: Colors.grey,
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 20.0),
                        child: Text(
                          "Click on a Device ID to make it active.",
                          style: TextStyle(fontSize: 18.0, color: Color(0xFF1f1769)),
                        ),
                      ),
                    ),
                    const Divider(
                        color: Color(0xFF1f1769),
                        height: 2,
                        thickness: 2),
                    Container(
                      height: 100,
                      child: Scrollbar(
                        thumbVisibility: true,
                        controller: _scrollController,
                        child: ListView(
                            controller: _scrollController,
                            scrollDirection: Axis.vertical,
                            children: devices.map((e) {
                              return ListTile(
                                  title: Text(
                                e,
                                textAlign: TextAlign.center,
                                style:
                                    const TextStyle(color: Color(0xFF1f1769)),
                              ),onTap: (){},
                              );
                            }).toList()),
                      ),
                    ),
                    const Divider(
                        color: Color(0xFF1f1769),
                        height: 5,
                        thickness: 2),
                    Container(
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 20.0),
                        child: IntrinsicHeight(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children:  [   const Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Add Text",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.horizontal(left: Radius.circular(5),right: Radius.zero)
                                  ),
                                ),
                              ),
                            ),
                              Container(
                                color: Colors.blue,
                              child:IconButton(onPressed: (){}, icon: Icon(Icons.add))
                              ),]
                          ),
                        ),
                      ),
                    )
                  ],
                ))),
      ],
    );
  }
}

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
