import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
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
      height: 900.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
          Row(
            children: [
              _eduCard(
                  '1998 - 2002',
                  'Ingeniería en Sistemas \n Computacionales',
                  'Universidad Valle del \n  Grijalva (UVG)',
                  'CEDULA PROFESIONAL: 8230278'),
              _eduCard(
                  '1995 - 1996',
                  'Programador Analista en \n Informática',
                  'Instituto Tecnológico y de \n Especialización S.C.',
                  'Certificado de Estudios'),
            ],
          ),

          _eduCard(
              '1995 - 1998',
              'Bachillerato',
              'Colegio de Bachilleres de Chiapas No. 33',
              'Certificado de Estudios'),
          _eduCard('1992 - 1995', 'Secundaria', 'Colegio Gilberto Velazquez',
              'Certificado de Estudios'),
          _eduCard('1986 - 1992', 'Primaria', 'Colegio Paulo Freire',
              'Certificado de Estudios'),
        ],
      ),
    );
  }

  Widget _eduCard(String anio, String titulo, String escuela, String otro) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              anio,
              style: const TextStyle(
                fontSize: 10.0,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            Text(
              titulo,
              style: const TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              escuela,
              style: const TextStyle(
                fontSize: 12.0,
                color: Colors.blueGrey,
              ),
            ),
            Text(
              otro,
              style: const TextStyle(
                fontSize: 11.0,
                color: Colors.blueGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
