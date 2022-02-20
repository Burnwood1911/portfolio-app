import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/widgets/inkwell.dart';

class ProjectTile extends StatelessWidget {
  final String title;
  final String description;
  final String imageName;

  const ProjectTile(
      {Key? key,
      required this.title,
      required this.imageName,
      required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              title,
              style: const TextStyle(
                  fontSize: 20, color: kpurple, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              description,
              style: const TextStyle(
                fontSize: 18,
                color: kpurple,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Image.asset(
            "images/" + imageName,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Row(
              children: [
                SpecialButton(
                  label: "See Live",
                  hoverColor: kgreen,
                  borderColor: kgreen,
                  textColor: kgreen,
                ),
                SizedBox(width: 20),
                SpecialButton(
                  label: "Source",
                  hoverColor: kgreen,
                  borderColor: kgreen,
                  textColor: kgreen,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
