// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/widgets/contact.dart';
import 'package:portfolio/widgets/footer.dart';
import 'package:portfolio/widgets/inkwell.dart';
import 'package:portfolio/widgets/project_tile.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: const Text(
      //     "Alex Rossi",
      //     style: TextStyle(
      //       color: kpurple,
      //       fontWeight: FontWeight.w600,
      //     ),
      //   ),
      //   centerTitle: true,
      //   elevation: 0.0,
      //   backgroundColor: Colors.transparent,
      // ),
      body: ListView(
        controller: controller,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            child: Center(
                child: Column(
              children: [
                Text(
                  "Hi, my name is",
                  style: TextStyle(
                      fontSize: 24,
                      color: kpurple,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Alexander Rossi",
                  style: TextStyle(
                      fontSize: 24, color: kgreen, fontWeight: FontWeight.bold),
                ),
                Text(
                  "I'm the",
                  style: TextStyle(
                      fontSize: 24,
                      color: kpurple,
                      fontWeight: FontWeight.bold),
                ),
                AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    RotateAnimatedText('Unknown Developer',
                        duration: Duration(milliseconds: 2000),
                        transitionHeight: 28,
                        rotateOut: true,
                        textStyle: TextStyle(
                            fontSize: 24,
                            color: kpurple,
                            fontWeight: FontWeight.bold)),
                    RotateAnimatedText('Missing Developer',
                        duration: Duration(milliseconds: 2000),
                        transitionHeight: 28,
                        rotateOut: true,
                        textStyle: TextStyle(
                            fontSize: 24,
                            color: kpurple,
                            fontWeight: FontWeight.bold)),
                    RotateAnimatedText('Unicorn Developer',
                        transitionHeight: 28,
                        rotateOut: true,
                        duration: Duration(milliseconds: 2000),
                        textStyle: TextStyle(
                            fontSize: 24,
                            color: kpurple,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            )),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            child: Center(
              child: InkWell(
                onTap: () {
                  controller.animateTo(MediaQuery.of(context).size.height,
                      duration: Duration(seconds: 1, milliseconds: 500),
                      curve: Curves.ease);
                },
                hoverColor: kpurple,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  decoration: BoxDecoration(
                      border: Border.all(color: kgreen, width: 2)),
                  child: Text(
                    "Know more",
                    style: TextStyle(
                        fontSize: 18,
                        color: kgreen,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            color: kgreen,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 10),
                child: Text(
                  "About Me",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                height: MediaQuery.of(context).size.height * 0.55,
                child: Image.asset(
                  "images/about.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  r"Hi there, My name is Alexander Rossi . A software developer based in Tanzania. Passionate about technology and open source software that have positive impact to the society. Also, constantly developing new skills and learning from other developers in the software development sphere. I’m interest in Full stack development and Cyber security.",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15),
                child: SpecialButton(
                  borderColor: Colors.white,
                  textColor: Colors.black,
                  hoverColor: Colors.white,
                  label: "Resume",
                  function: () async {
                    await launch("https://bit.ly/alexrossicv");
                  },
                ),
              ),
            ]),
          ),
          Container(
              color: Colors.white,
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      "Projects",
                      style: TextStyle(
                          fontSize: 24,
                          color: kpurple,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  ProjectTile(
                    title: "CinemaApp",
                    description:
                        "A Beautiful Cinema App For Booking Tickets with exemplary features and multiplatform on both IOS and ANDROID operating systems.",
                    imageName: "image1.jpg",
                  ),
                  ProjectTile(
                    title: "Blog App",
                    description:
                        "A Modern day blog app with cross cutting features for all journalism lovers.",
                    imageName: "image2.jpg",
                  ),
                  ProjectTile(
                    title: "Food App",
                    description:
                        "An elegant food ordering app for small and starting food chains and restaurants.",
                    imageName: "image3.jpg",
                  ),
                ],
              )),
          SizedBox(
            height: 20,
          ),
          Contact(),
          Footer()
        ],
      ),
    );
  }
}
