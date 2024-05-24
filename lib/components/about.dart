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
      height: 1250.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Image.asset(
                "assets/dev.png",
                height: 156.0,
              ),
              const SizedBox(height: 20),
              const Text(
                "Jorge Enrique Román Cadenas",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  "Ingeniero en Sistemas Computacionales, con experiencia en desarrollo de Software para organizaciones Gubernamentales,"
                  " gestión de Tecnologías de Información y Telecomunicaciones TIC’s, implementación de redes de voz y datos, liderazgo de"
                  " equipos de trabajo, actualmente me he capacitado en nuevos frameworks y lenguajes de desarrollo de software, WebServices,"
                  " y desarrollo de Apps para dispositivos móviles.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w800,
                      color: Colors.black),
                ),
              ),
              const SizedBox(height: 20),

              const Divider(),
              const Text(
                "Contacto",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 50),
              AnimatedContact(
                  iconData: FontAwesomeIcons.whatsapp,
                  title: "WhatsApp",
                  subtitle: "9615792317",
                  url:
                      'https://wa.me/529615792317?text=He%20visto%20tu%20curriculum%20y%20me%20gustaría%20contactarte',
                  onTap: () {}),
              const SizedBox(height: 50),
              AnimatedContact(
                  iconData: FontAwesomeIcons.google,
                  title: "Gmail",
                  subtitle: "romancadenas@gmail.com",
                  url: 'mailto:romancadenas@gmail.com',
                  onTap: () {}),
              const SizedBox(height: 50),
              AnimatedContact(
                  iconData: FontAwesomeIcons.github,
                  title: "Github",
                  subtitle: "/RomanCadenas",
                  url: 'https://github.com/RomanCadenas',
                  onTap: () {}),
              const SizedBox(height: 50),
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
