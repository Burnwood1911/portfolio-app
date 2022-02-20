import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: const Color(0xff333333),
      child: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              color: Colors.white,
              onPressed: () async {
                await launch("https://twitter.com/burnw00d");
              },
              icon: const FaIcon(
                FontAwesomeIcons.twitter,
                size: 35,
              ),
            ),
            IconButton(
              color: Colors.white,
              onPressed: () async {
                await launch("https://codepen.io/burnwood");
              },
              icon: const FaIcon(
                FontAwesomeIcons.codepen,
                size: 35,
              ),
            ),
            IconButton(
              color: Colors.white,
              onPressed: () async {
                await launch("https://linkedin.com/in/alex-rossi-108a63224");
              },
              icon: const FaIcon(
                FontAwesomeIcons.linkedin,
                size: 35,
              ),
            ),
            IconButton(
              color: Colors.white,
              onPressed: () async {
                await launch("https://github.com/burnwood1911");
              },
              icon: const FaIcon(
                FontAwesomeIcons.github,
                size: 35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
