import 'package:flutter/material.dart';
import 'package:flutter_responsive_web/core/block_wrapper.dart';
import 'package:flutter_responsive_web/themes/color.dart';
import 'package:flutter_responsive_web/themes/spacing.dart';
import 'package:flutter_responsive_web/themes/styles.dart';
import 'package:flutter_responsive_web/widgets/footer.dart';
import 'package:flutter_responsive_web/widgets/list_item.dart';
import 'package:flutter_responsive_web/widgets/header.dart';
import 'package:flutter_responsive_web/widgets/top_section.dart';
import 'package:material_segmented_control/material_segmented_control.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomeView extends StatefulWidget {
  static const String name = 'home';

  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentSelection = 0;
  final Map<int, Widget> _children = {
    0: const Text('Arbeitnehmer'),
    1: const Text('Arbeitgeber'),
    2: const Text('Temporärbüro')
  };

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  const BlockWrapper(Header()),
                  const BlockWrapper(TopSection(
                    title: 'Deine Job website',
                    imageUrl: "assets/images/undraw_agreement_aajr.png",
                  )),
                  BlockWrapper(Container(
                    width: width,
                    padding: blockPadding(context),
                    child: MaterialSegmentedControl(
                      children: _children,
                      selectionIndex: _currentSelection,
                      borderColor: Colors.grey,
                      selectedColor: segmentSelectedColor,
                      unselectedColor: Colors.white,
                      selectedTextStyle: segmentSelectedStyle,
                      unselectedTextStyle: segmentUnselectedStyle,
                      borderWidth: 0.7,
                      borderRadius: 32.0,
                      onSegmentTapped: (index) {
                        setState(() {
                          _currentSelection = index;
                        });
                      },
                    ),
                  )),
                  BlockWrapper(sectionHeading()),
                  BlockWrapper(loadList()),
                ],
              ),
            ),
          ),
          ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
              ? const BlockWrapper(Footer())
              : Container(),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }

  Widget sectionHeading() {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
            ? marginBottom12
            : marginBottom24,
        padding: blockPadding(context),
        child: Text(
          'Drei einfache Schritte zur Vermittlung neuer Mitarbeiter',
          style: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
              ? headlineSectionTitleStyleMobile
              : headlineSectionTitleStyle,
        ),
      ),
    );
  }

  Widget loadList() {
    if (_currentSelection == 0) {
      return const Column(
        children: [
          ListItem(
            imageUrl: "assets/images/undraw_Profile_data_re_v81r.png",
            title: "1.",
            description: "Erstellen dein Lebenslauf",
            color: Colors.white,
          ),
          Divider(color: Color(0xFFEEEEEE), thickness: 1),
          ListItem(
            imageUrl: "assets/images/undraw_task_31wc.png",
            title: "2.",
            description: "Erstellen dein Lebenslauf",
            color: bgShadowcolor,
            shouldClip: true,
          ),
          Divider(color: Color(0xFFEEEEEE), thickness: 1),
          ListItem(
              imageUrl: "assets/images/undraw_personal_file_222m.png",
              title: "3.",
              description: "Mit nur einem Klick bewerben"),
          Divider(color: Color(0xFFEEEEEE), thickness: 1),
        ],
      );
    } else if (_currentSelection == 1) {
      return const Column(
        children: [
          ListItem(
              imageUrl: "assets/images/undraw_personal_file_222m.png",
              title: "1.",
              description: "Erstellen dein Unternehmensprofil"),
          Divider(color: Color(0xFFEEEEEE), thickness: 1),
          ListItem(
            imageUrl: "assets/images/undraw_sec2_2.png",
            title: "2.",
            description: "Erstellen ein Jobinserat",
            color: bgShadowcolor,
            shouldClip: true,
          ),
          Divider(color: Color(0xFFEEEEEE), thickness: 1),
          ListItem(
              imageUrl: "assets/images/undraw_sec2_3.png",
              title: "3.",
              description: "Wähle deinen neuen Mitarbeiter aus"),
          Divider(color: Color(0xFFEEEEEE), thickness: 1),
        ],
      );
    } else if (_currentSelection == 2) {
      return const Column(
        children: [
          ListItem(
              imageUrl: "assets/images/undraw_Profile_data_re_v81r.png",
              title: "1.",
              description: "Erstellen dein Unternehmensprofil"),
          Divider(color: Color(0xFFEEEEEE), thickness: 1),
          ListItem(
            imageUrl: "assets/images/undraw_sec3_2.png",
            title: "2.",
            description: "Erhalte Vermittlungs- angebot von Arbeitgeber",
            color: bgShadowcolor,
            shouldClip: true,
          ),
          Divider(color: Color(0xFFEEEEEE), thickness: 1),
          ListItem(
              imageUrl: "assets/images/undraw_sec3_3.png",
              title: "3.",
              description: "Vermittlung nach Provision oder Stundenlohn"),
          Divider(color: Color(0xFFEEEEEE), thickness: 1),
        ],
      );
    }

    return Container();
  }
}
