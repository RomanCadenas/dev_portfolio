import 'package:dev_portfolio/components/about.dart';
import 'package:dev_portfolio/components/courses.dart';
import 'package:dev_portfolio/components/education.dart';
import 'package:dev_portfolio/components/footer.dart';
import 'package:dev_portfolio/components/skills.dart';
import 'package:flutter/material.dart';

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
      body: const SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 20.0,
                runAlignment: WrapAlignment.center,
                children: [About(), Education(), Skills(), Courses()],
              ),
              //

              //
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
