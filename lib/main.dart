import 'package:flutter/material.dart';
import './Components/MomentAnalysisCard.dart';
import './Components/GarminDevicesCard.dart';
import './Components/SelectSurveyCard.dart';
import './Components/MomentAnalysisOverRideCard.dart';

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
      // home: MyHomePage(title: 'Ameya'),
      // initialRoute: "/home",
      initialRoute: "/detail",
      routes: {
        '/home' : (context) => const MyHomePage(title: "Ameya"),
        '/detail' : (context) => const DetailsView(title: "Ameya")
      },
    );
  }
}

class DetailsView extends StatefulWidget {
  final String title;

  const DetailsView({super.key, required this.title});

  @override
  _DetailsViewState createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
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
              children:  [
                HeadingTitle(),
                Subtitle(),
                const MomentAnalysisOverRideCard(),

                ElevatedButton(onPressed: (){
                  Navigator.pushNamed(context, '/detail');
                },
                    child: Text("Save Participant")),
              ],
            ),
          )),
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
              children:  [
                HeadingTitle(),
                Subtitle(),
                MomentAnalysisCard(),
                GarminDevicesCard(),
                SelectSurveyCard(),
                ElevatedButton(onPressed: (){
                  Navigator.pushNamed(context, '/detail');
                },
                    child: Text("Save Participant"),

                  style:ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    shape: const RoundedRectangleBorder( borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),

                ),

              ],
            ),
          )),
    );
  }
}

class Subtitle extends StatelessWidget {
  const Subtitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
            child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          child: const Text(
            "Participant Settings",
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
          ),
        )),
      ],
    );
  }
}

class HeadingTitle extends StatelessWidget {
  const HeadingTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
            child: Container(
          margin: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
          color: const Color(0xFFeeedf6),
          child: const Text(
            "Create/Edit a Participant Profile",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w700),
          ),
        )),
      ],
    );
  }
}
