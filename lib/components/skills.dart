import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20.0,
      runSpacing: 20.0,
      alignment: WrapAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          alignment: Alignment.center,
          child: const Text(
            "Habilidades",
            style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 0, 0, 0)),
          ),
        ),
        //
        Container(
          width: context.screenWidth < 900
              ? context.screenWidth * 0.9
              : ((context.screenWidth * 0.7) / 3),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
          ),
          padding: const EdgeInsets.all(28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "Lenguajes de Programación",
                style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 110, 26, 26)),
              ),
              const Divider(),
              Wrap(
                alignment: WrapAlignment.spaceAround,
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  _chips("Dart"),
                  _chips("Flutter"),
                  _chips("Python"),
                  _chips("Reflex"),
                  _chips("Angular"),
                  _chips("JavaScript"),
                  _chips("Dart"),
                  _chips("Kotlin"),
                  _chips("React Native"),
                  _chips("C++"),
                  _chips("PHP"),
                  // _chips("VBS ASP 3"),
                ],
              ),
            ],
          ),
        ),
        //
        //
        Container(
          width: context.screenWidth < 900
              ? context.screenWidth * 0.9
              : ((context.screenWidth * 0.7) / 3),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
          ),
          padding: const EdgeInsets.all(28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "Habilidades Blandas",
                style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 110, 26, 26)),
              ),
              const Divider(),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  _chips("Liderazgo"),
                  _chips("Pensamiento Critico"),
                  _chips("Gestión de Cambios Tecnológicos"),
                  _chips("Resiliencia"),
                  _chips("Gestión del Tiempo"),
                ],
              ),
            ],
          ),
        ),
        //
        //
        Container(
          width: context.screenWidth < 900
              ? context.screenWidth * 0.9
              : ((context.screenWidth * 0.7) / 3),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
          ),
          padding: const EdgeInsets.all(28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "Otros Conocimientos",
                style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 110, 26, 26)),
              ),
              const Divider(),
              Wrap(
                // alignment: WrapAlignment.center,
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  _chips("Gestión de Telecomunicaciones"),
                  _chips("Gestión de Bases de Datos"),
                  _chips("Gestión de Bienes Informáticos"),
                  _chips("Gestión de Servidores Windows"),
                  _chips("Gestión de Servidores GNU/Linux"),
                  _chips("Gestion de WebServices"),
                ],
              ),
            ],
          ),
        ),
        //
      ],
    );
  }

  Widget _chips(String leng) {
    return Chip(
      label: Text(
        leng,
      ),
      labelStyle: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
      side: const BorderSide(color: Color.fromARGB(255, 92, 86, 86)),
      backgroundColor: const Color.fromARGB(255, 73, 69, 69),
    );
  }
}
