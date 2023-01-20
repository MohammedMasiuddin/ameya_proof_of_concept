
import 'package:flutter/material.dart';


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
  final _addDevicesController = TextEditingController();
  int clickDevice = 0;

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
                      height: 130,
                      child: Scrollbar(
                        thumbVisibility: true,
                        controller: _scrollController,
                        child: ListView(
                            addAutomaticKeepAlives: false,
                            controller: _scrollController,
                            scrollDirection: Axis.vertical,
                            children: devices.map((e) {
                              return ListTile(
                                tileColor: devices.indexOf(e) == clickDevice ? Colors.purple[100] : null,
                                shape: devices.indexOf(e) == 0 ? const Border() : const Border(
                                    top: BorderSide(width: 1,color: Colors.indigo)/**/
                                    ),
                                title: Text(
                                  e,
                                  textAlign: TextAlign.center,
                                  style:
                                  const TextStyle(color: Color(0xFF1f1769)),
                                ),onTap: (){
                                  setState(() {
                                    clickDevice = devices.indexOf(e);
                                  });
                                },
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
                              children:  [  Expanded(
                                child: TextField(
                                  controller: _addDevicesController,

                                  decoration: const InputDecoration(
                                    hintText: "Add Text",
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.horizontal(left: Radius.circular(5),right: Radius.zero),
                                        borderSide: BorderSide(width: 2,color: Color(0xFF1f1769),style: BorderStyle.solid )
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.horizontal(left: Radius.circular(5),right: Radius.zero)
                                    ),
                                  ),
                                ),
                              ),
                                Container(
                                    color: Colors.blue,
                                    child:IconButton(onPressed: (){

                                      print(_addDevicesController.text);
                                        if(_addDevicesController.text != ""){
                                          setState(() {
                                            devices.add(_addDevicesController.text);
                                            _addDevicesController.clear();
                                          });
                                        }
                                      },
                                    icon: Icon(Icons.add))
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
