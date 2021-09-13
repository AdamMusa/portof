import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:porto/pages/home/components/carousel.dart';
import 'package:porto/pages/home/components/cv_section.dart';
import 'package:porto/pages/home/components/findme.dart';
import 'package:porto/pages/home/components/footer.dart';
import 'package:porto/pages/home/components/header.dart';
import 'package:porto/pages/home/components/portfolio_stats.dart';
import 'package:porto/pages/home/components/skill_section.dart';
import 'package:porto/pages/home/components/website_ad.dart';
import 'package:porto/utils/constants.dart';
import 'package:porto/utils/globals.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Globals.scaffoldKey,
      endDrawer: Drawer(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 24.0,
            ),
            child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return headerItems[index].isButton
                    ? MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Container(
                          decoration: BoxDecoration(
                            color: kDangerColor,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 28.0),
                          child: TextButton(
                            onPressed: headerItems[index].onTap,
                            child: Text(
                              headerItems[index].title,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 13.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      )
                    : ListTile(
                        title: Text(
                          headerItems[index].title,
                          style: const TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 10.0,
                );
              },
              itemCount: headerItems.length,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Header(),
            Carousel(),
            const SizedBox(
              height: 20.0,
            ),
            const CvSection(),
            const WebsiteAd(),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 28.0),
              child: PortfolioStats(),
            ),
            const SizedBox(
              height: 50.0,
            ),
            const SizedBox(
              height: 50.0,
            ),
            const FindMe(),
            const SizedBox(
              height: 50.0,
            ),
            const SkillSection(),
            const SizedBox(
              height: 50.0,
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
