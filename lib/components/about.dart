import 'package:dev_portfolio/utils/animated_contact.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20.0,
      ),
      width: 500,
      // context.screenWidth < 900
      //     ? context.screenWidth * 0.5
      //     : context.screenWidth < 1600
      //         ? context.screenWidth * 0.3
      //         : context.screenWidth * 0.1,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          20.0,
        ),
      ),
      padding: const EdgeInsets.all(30.0),
      height: 900.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Image.asset(
                "assets/dev.png",
                height: 156.0,
              ),
              const Text(
                "Jorge Enrique Román Cadenas",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  "Ingeniero en Sistemas Computacionales, con experiencia en desarrollo de Software para organizaciones Gubernamentales,"
                  " gestión de Tecnologías de Información y Telecomunicaciones TIC’s, implementación de redes de voz y datos, liderazgo de"
                  " equipos de trabajo, actualmente me he capacitado en nuevos frameworks y lenguajes de desarrollo de software, WebServices,"
                  " y desarrollo de Apps para dispositivos móviles.",
                  textAlign: TextAlign.center,
                ),
              ),
              // const Wrap(
              //   alignment: WrapAlignment.center,
              //   spacing: 8.0,
              //   runSpacing: 8.0,
              //   children: [
              //     Chip(
              //       label: Text(
              //         "Trabajo en Equipo",
              //       ),
              //       labelStyle: TextStyle(
              //         color: Colors.white,
              //         fontSize: 14.0,
              //       ),
              //       backgroundColor: Colors.green,
              //       padding: EdgeInsets.all(8.0),
              //     ),
              //     Chip(
              //       label: Text(
              //         "Liderazgo",
              //       ),
              //       labelStyle: TextStyle(
              //         color: Colors.white,
              //         fontSize: 14.0,
              //       ),
              //       backgroundColor: Colors.green,
              //       padding: EdgeInsets.all(8.0),
              //     ),
              //     Chip(
              //       label: Text(
              //         "Desarrollo Web/Movil",
              //       ),
              //       labelStyle: TextStyle(
              //         color: Colors.white,
              //         fontSize: 14.0,
              //       ),
              //       backgroundColor: Colors.green,
              //       padding: EdgeInsets.all(8.0),
              //     ),
              //   ],
              // ),
              //
              const Divider(),
              const Text(
                "Contacto",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              //
              AnimatedContact(
                  iconData: FontAwesomeIcons.whatsapp,
                  title: "WhatsApp",
                  subtitle: "9615792317",
                  url:
                      'https://wa.me/9615792317?text=He%20visto%20tu%20curriculum%20y%20me%20gustaría%20contactarte',
                  onTap: () {}),
              AnimatedContact(
                  iconData: FontAwesomeIcons.google,
                  title: "Gmail",
                  subtitle: "romancadenas@gmail.com",
                  url: 'mailto:romancadenas@gmail.com',
                  onTap: () {}),
              AnimatedContact(
                  iconData: FontAwesomeIcons.github,
                  title: "Github",
                  subtitle: "/RomanCadenas",
                  url: 'https://github.com/RomanCadenas',
                  onTap: () {}),
              AnimatedContact(
                  iconData: FontAwesomeIcons.linkedin,
                  title: "Linkedin",
                  subtitle: "in/romancadenas",
                  url: 'https://www.linkedin.com/in/romancadenas/',
                  onTap: () {}),
              //
              const Column(
                children: [
                  Divider(),
                  //SocialRow(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
