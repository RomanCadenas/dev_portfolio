import 'package:dev_portfolio/utils/socialrow.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 124, 33, 33),
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.only(top: 20.0),
      child: const Column(
        children: [
          SocialRow(),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "Jorge Enrique Román Cadenas",
          ),
        ],
      ),
    );
  }
}
