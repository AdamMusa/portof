// ignore: file_names
// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:porto/utils/constants.dart';
import 'package:porto/utils/url.dart';
import 'package:url_launcher/url_launcher.dart';

class FindMe extends StatelessWidget {
  const FindMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("You can find me",
            style: TextStyle(color: Colors.black54, fontSize: 40)),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () async {
                  link("https://twitter.com/AdamMusaAly");
                },
                icon: const Icon(
                  AntDesign.twitter,
                  color: Colors.blue,
                )),
            IconButton(
                onPressed: () {
                  link("https://github.com/AdamMusa");
                },
                icon: const Icon(
                  AntDesign.github,
                )),
            IconButton(
                onPressed: () {
                  link("https://www.linkedin.com/in/adammusa/");
                },
                icon: const Icon(
                  AntDesign.linkedin_square,
                  color: Colors.blue,
                )),
            IconButton(
                onPressed: () {
                  link(Uri.encodeFull(
                      'mailto:adammusa2222@gmail.com?subject=News&body= Hi Adam'));
                },
                icon: const Icon(
                  AntDesign.mail,
                  color: Colors.blue,
                )),
          ],
        ),
      ],
    ));
  }
}
