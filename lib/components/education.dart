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
        width: 500,
        // context.screenWidth < 900
        //     ? context.screenWidth * 0.9
        //     : context.screenWidth < 1600
        //         ? context.screenWidth * 0.5
        //         : context.screenWidth * 0.4,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            20.0,
          ),
        ),
        padding: const EdgeInsets.all(30.0),
        height: 1250.0,
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          const Text(
            "Experiencia",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
                color: Colors.black),
          ),
          //
          const SizedBox(
            height: 12.0,
          ),

          _eduCard(
              '2016 a la fecha',
              'COMISIÓN DE CAMINOS E \nINFRAESTRUCTURA HIDRÁULICA',
              'Puesto: Jefe de Unidad de Informática',
              '  - Desarrollo de Software \n  - Gestión de Equipos de Trabajo \n  - Imagen Institucional \n  - Implementación de TIC´s \n -  Desarrollo de Soluciones tecnológicas'),
          _eduCard(
              '2013 - 2016',
              'INSTITUTO DE LA INFRAESTRUCTURA \nFÍSICA EDUCATIVA DEL ESTADO DE CHIAPAS',
              'Puesto: Asesor de Informática',
              '  - Lider de Equipo de Desarrollo del Sistema de Registro de Obra \n  - Implementación de Servidores NAS '),
          _eduCard(
              '2012 - 2013',
              'SECRETARIA DE SALUD \nJURISDICCIÓN SANITARIA IX OCOSINGO',
              'Puesto: Auxiliar Administrativo',
              '  - Gestión de Inventarios de Almacén \n  - Agente Certificador de Firma Electrónica'),
          _eduCard(
              '2006 - 2012',
              'TECNOLOGÍA URBANA Y AMBIENTAL \nDE MÉXICO, S.A. DE C.V.',
              'Puesto: Director de Tecnología y Representante Legal',
              '  - Gestión de Licitaciones de Bienes Informáticos \n  - Lider de Proyectos de TIC´s para el Sector Publico/Privado \n  - Gestión Administrativa (IMSS, INFONAVIT, Pago Nomina)'),

          _eduCard(
              '2003 - 2006',
              'COMITÉ DE CONSTRUCCIÓN \nDE ESCUELAS',
              'Puesto Jefe de Área de Sistemas',
              '  -Lider de equipo de Desarrollo del Sistema PEON \n  - Automatización de procesos \n  - Diseño e Implementación de Informes en Sistema PEON\n  - Soporte Técnico a Usuarios'),
        ]));
  }

  Widget _eduCard(
      String anio, String lugar, String puesto, String actividades) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(23.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              anio,
              style: const TextStyle(
                fontSize: 12.0,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Text(
              lugar,
              style: const TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              puesto,
              style: const TextStyle(
                fontSize: 14.0,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Text(
              actividades,
              style: const TextStyle(
                fontSize: 12.0,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            // Text(
            //   otro,
            //   style: const TextStyle(
            //     fontSize: 1.0,
            //     color: Colors.blueGrey,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
