import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:porto/models/skill.dart';
import 'package:porto/utils/constants.dart';
import 'package:porto/utils/screen_helper.dart';
import 'package:responsive_framework/responsive_framework.dart';

List<Skill> skills = [
  Skill(
    skill: "Dart",
    percentage: 65,
  ),
  Skill(
    skill: "Flutter",
    percentage: 70,
  ),
  Skill(
    skill: "Javascript",
    percentage: 50,
  ),
  Skill(
    skill: "VueJS",
    percentage: 58,
  ),
  Skill(
    skill: "NuxtJS",
    percentage: 67,
  ),
  Skill(
    skill: "Vuetify",
    percentage: 73,
  ),
  Skill(
    skill: "Python",
    percentage: 91,
  ),
  Skill(
    skill: "Django",
    percentage: 83,
  ),
  Skill(
    skill: "FastAPI",
    percentage: 76,
  ),
  Skill(
    skill: "Ruby",
    percentage: 90,
  ),
  Skill(
    skill: "Ruby On Rails",
    percentage: 82,
  ),
  Skill(
    skill: "Jekyll",
    percentage: 93,
  ),
];

class SkillSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenHelper(
        desktop: _buildUi(kDesktopMaxWidth),
        tablet: _buildUi(kTabletMaxWidth),
        mobile: _buildUi(getMobileMaxWidth(context)),
      ),
    );
  }

  Widget _buildUi(double width) {
    return Center(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return ResponsiveWrapper(
            maxWidth: width,
            minWidth: width,
            child: Flex(
              direction: ScreenHelper.isMobile(context)
                  ? Axis.vertical
                  : Axis.horizontal,
              children: [
                Expanded(
                  flex: ScreenHelper.isMobile(context) ? 0 : 2,
                  child: Image.asset(
                    "assets/person.png",
                    width: 300.0,
                  ),
                ),
                SizedBox(
                  width: 50.0,
                ),
                Expanded(
                  flex: ScreenHelper.isMobile(context) ? 0 : 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "SKILLS",
                        style: GoogleFonts.oswald(
                          color: Colors.grey,
                          fontWeight: FontWeight.w900,
                          fontSize: 28.0,
                          height: 1.3,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "All Technologie I use Every often",
                        style: TextStyle(
                          color: kCaptionColor,
                          height: 1.5,
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Column(
                        children: skills
                            .map(
                              (skill) => Container(
                                margin: EdgeInsets.only(bottom: 15.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: skill.percentage,
                                      child: Container(
                                        padding: EdgeInsets.only(left: 10.0),
                                        alignment: Alignment.centerLeft,
                                        height: 38.0,
                                        child: Text(skill.skill,
                                            style:
                                                TextStyle(color: Colors.white)),
                                        color: Colors.black54,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Expanded(
                                      // remaining (blank part)
                                      flex: 100 - skill.percentage,
                                      child: Divider(
                                        color: Colors.black54,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Text(
                                      "${skill.percentage}%",
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 16.0,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                            .toList(),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
