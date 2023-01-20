import 'package:flutter/material.dart';

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
  List<Survey> surveys = [
    Survey(surveyname: "Survey 1 (version 1.1)", status: true),
    Survey(surveyname:  "Survey 2 (version 1.2)",status: false),
    Survey(surveyname: "Survey 3 (version 1.3)", status: true),
    Survey(surveyname:  "Survey 4 (version 1.4)",status: false)
  ];

  final _searchSurveyController = TextEditingController();

  List<Survey> filterSurveys = [];


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
                              children:  [    Expanded(
                                child: TextField(
                                  controller: _searchSurveyController,
                                  decoration: const InputDecoration(
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
                                    child:IconButton(onPressed: (){
                                      setState(() {
                                        filterSurveys = surveys.where((element) {
                                          if(_searchSurveyController.text == ""){
                                            return true;
                                          }
                                          if(element.surveyname.contains(_searchSurveyController.text)){
                                            return true;
                                          }
                                          else{
                                            return false;
                                          }
                                        }).toList();
                                      });
                                    }, icon: Icon(Icons.search))
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
                        child: filterSurveys.isEmpty ?  ListView(
                            controller: _scrollServeyController,
                            scrollDirection: Axis.vertical,
                            children:  surveys.map((e) {
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
                            }).toList()) :  ListView(
                            controller: _scrollServeyController,
                            scrollDirection: Axis.vertical,
                            children:  filterSurveys.map((e) {
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
                            }).toList())  ,
                      ),
                    ),
                  ],
                ))),
      ],
    );
  }
}
