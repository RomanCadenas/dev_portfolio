import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Courses extends StatefulWidget {
  const Courses({super.key});

  @override
  State<Courses> createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20.0,
      ),
      width: context.screenWidth < 900
          ? context.screenWidth * 0.9
          : context.screenWidth < 1600
              ? context.screenWidth * 0.5
              : context.screenWidth * 0.4,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          20.0,
        ),
      ),
      padding: const EdgeInsets.all(30.0),
      height: 350.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Educación",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          //
          const SizedBox(
            height: 12.0,
          ),
          _eduCard(
              '1998 - 2002',
              'Ingeniería en Sistemas Computacionales',
              'Universidad Valle del Grijalva (UVG)',
              'CEDULA PROFESIONAL: 8230278'),
          _eduCard(
              '1995 - 1996',
              'Programador Analista en Informática',
              'Instituto Tecnológico y de Especialización S.C.',
              'Certificado de Estudios'),
        ],
      ),
    );
  }

  Widget _eduCard(String anio, String titulo, String escuela, String otro) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              anio,
              style: const TextStyle(
                fontSize: 12.0,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            Text(
              titulo,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              escuela,
              style: const TextStyle(
                fontSize: 18.0,
                color: Colors.blueGrey,
              ),
            ),
            Text(
              otro,
              style: const TextStyle(
                fontSize: 14.0,
                color: Colors.blueGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
