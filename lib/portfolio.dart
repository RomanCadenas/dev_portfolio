import 'package:dev_portfolio/components/about.dart';
import 'package:dev_portfolio/components/education.dart';
import 'package:dev_portfolio/components/footer.dart';
import 'package:dev_portfolio/components/skills.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  List<Widget> navItems = [];
  bool isMobile = false;

  final skillKey = GlobalKey();

  @override
  void initState() {
    // navItems = [
    //   Padding(
    //     padding: const EdgeInsets.all(8.0),
    //     child: ElevatedButton(
    //         onPressed: () {
    //           Scrollable.ensureVisible(skillKey.currentContext!);
    //         },
    //         child: const Text("Educación")),
    //   ),
    //   Padding(
    //     padding: const EdgeInsets.all(8.0),
    //     child: ElevatedButton(
    //         onPressed: () {
    //           Scrollable.ensureVisible(skillKey.currentContext!);
    //         },
    //         child: const Text("Habilidades")),
    //   ),
    // ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    isMobile = MediaQuery.of(context).size.width > 700 ? false : true;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Currículum Vitae"),
        actions: isMobile ? null : navItems,
      ),
      drawer: isMobile
          ? Drawer(
              child: ListView(
                children: navItems,
              ),
            )
          : null,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Wrap(
                alignment: WrapAlignment.center,
                spacing: 20.0,
                runAlignment: WrapAlignment.center,
                children: [
                  About(),
                  Education(),
                ],
              ),
              //
              Skills(
                key: skillKey,
              ),
              //
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
