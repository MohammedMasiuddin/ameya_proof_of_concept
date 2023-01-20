import 'package:flutter/material.dart';

class MomentAnalysisOverRideCard extends StatefulWidget {
  const MomentAnalysisOverRideCard({
    Key? key,
  }) : super(key: key);

  @override
  State<MomentAnalysisOverRideCard> createState() => _MomentAnalysisOverRideCardState();
}

class _MomentAnalysisOverRideCardState extends State<MomentAnalysisOverRideCard> {
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      color: const Color(0xFF1f1769),
                      width: double.infinity,
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 20.0),
                        child: Text(
                          "Movement Analysis Overrides",
                          style: TextStyle(fontSize: 18.0, color: Colors.white),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:  [
                        Expanded(
                          flex:1,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Application from"),
                                Container(
                                  width: 130,
                                  child:  TextField(
                                  decoration: InputDecoration(
                                    hintText: "11/11/22",
                                    suffixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.calendar_month,color: Color(0xFF1f1769),)),
                                    contentPadding: EdgeInsets.all(5.0),
                                    enabledBorder: const OutlineInputBorder(
                                        borderRadius: BorderRadius.horizontal(left: Radius.circular(5),right: Radius.zero),
                                        borderSide: BorderSide(width: 2,color: Color(0xFF1f1769),style: BorderStyle.solid )
                                    ),
                                      border: const OutlineInputBorder(
                                          borderRadius: BorderRadius.horizontal(left: Radius.circular(5),right: Radius.zero),
                                          borderSide: BorderSide(width: 2,color: Color(0xFF1f1769),style: BorderStyle.solid )

                                      )
                                  ),
                              ),
                                )],
                            ),
                          ),
                        ),

                        Expanded(
                          flex:1,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Application until"),
                                Container(
                                  width: 130,
                                  child:  TextField(
                                    decoration: InputDecoration(
                                        hintText: "11/11/22",
                                        suffixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.calendar_month,color: Color(0xFF1f1769),)),
                                        contentPadding: EdgeInsets.all(5.0),
                                        enabledBorder: const OutlineInputBorder(
                                            borderRadius: BorderRadius.horizontal(left: Radius.circular(5),right: Radius.zero),
                                            borderSide: BorderSide(width: 2,color: Color(0xFF1f1769),style: BorderStyle.solid )
                                        ),
                                        border: const OutlineInputBorder(
                                            borderRadius: BorderRadius.horizontal(left: Radius.circular(5),right: Radius.zero),
                                            borderSide: BorderSide(width: 2,color: Color(0xFF1f1769),style: BorderStyle.solid )

                                        )
                                    ),
                                  ),
                                )],
                            ),
                          ),
                        ),

                      ],
                    ),
                    const Divider(
                        color: Colors.transparent,
                        height: 15,
                        thickness: 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(

                          width: 50,
                          child:  const TextField(
                            decoration: InputDecoration(

                                hintText: "90",
                                contentPadding: EdgeInsets.all(5.0),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.horizontal(left: Radius.circular(5),right: Radius.zero),
                                    borderSide: BorderSide(width: 2,color: Color(0xFF1f1769),style: BorderStyle.solid )
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.horizontal(left: Radius.circular(5),right: Radius.zero),
                                    borderSide: BorderSide(width: 2,color: Color(0xFF1f1769),style: BorderStyle.solid )

                                )
                            ),
                          ),
                        ),
                        const Text("Angle at Knee",textAlign: TextAlign.center,style: TextStyle(fontSize: 20.0),),
                      ],
                    ),

                    const Divider(
                        color: Colors.transparent,
                        height: 15,
                        thickness: 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 50,
                          child:  const TextField(
                            decoration: InputDecoration(

                                hintText: "90",
                                contentPadding: EdgeInsets.all(5.0),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.horizontal(left: Radius.circular(5),right: Radius.zero),
                                    borderSide: BorderSide(width: 2,color: Color(0xFF1f1769),style: BorderStyle.solid )
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.horizontal(left: Radius.circular(5),right: Radius.zero),
                                    borderSide: BorderSide(width: 2,color: Color(0xFF1f1769),style: BorderStyle.solid )

                                )
                            ),
                          ),
                        ),
                        const Text("TDB",style: TextStyle(fontSize: 20.0),),
                      ],
                    ),

                    const Divider(
                        color: Colors.transparent,
                        height: 15,
                        thickness: 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 50,
                          child:  const TextField(
                            decoration: InputDecoration(

                                hintText: "90",
                                contentPadding: EdgeInsets.all(5.0),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.horizontal(left: Radius.circular(5),right: Radius.zero),
                                    borderSide: BorderSide(width: 2,color: Color(0xFF1f1769),style: BorderStyle.solid )
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.horizontal(left: Radius.circular(5),right: Radius.zero),
                                    borderSide: BorderSide(width: 2,color: Color(0xFF1f1769),style: BorderStyle.solid )

                                )
                            ),
                          ),
                        ),
                        const Text("TDB",style: TextStyle(fontSize: 20.0),),
                      ],
                    ),


                    const Divider(
                        color: Colors.transparent,
                        height: 15,
                        thickness: 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 50,
                          child:  const TextField(
                            decoration: InputDecoration(

                                hintText: "90",
                                contentPadding: EdgeInsets.all(5.0),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.horizontal(left: Radius.circular(5),right: Radius.zero),
                                    borderSide: BorderSide(width: 2,color: Color(0xFF1f1769),style: BorderStyle.solid )
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.horizontal(left: Radius.circular(5),right: Radius.zero),
                                    borderSide: BorderSide(width: 2,color: Color(0xFF1f1769),style: BorderStyle.solid )

                                )
                            ),
                          ),
                        ),
                        const Text("TDB",style: TextStyle(fontSize: 20.0),),
                      ],
                    )

                  ],
                ))),
      ],
    );
  }
}
