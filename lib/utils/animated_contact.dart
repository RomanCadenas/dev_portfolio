import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

class AnimatedContact extends StatefulWidget {
  final IconData iconData;
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  final String url;
  const AnimatedContact({
    super.key,
    required this.iconData,
    required this.title,
    required this.subtitle,
    required this.onTap,
    required this.url,
  });

  @override
  State<AnimatedContact> createState() => _AnimatedContactState();
}

class _AnimatedContactState extends State<AnimatedContact> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => html.window.open(widget.url, '_blank'),
      onHover: (val) {
        setState(() {
          isHovering = val;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
          color: isHovering
              ? Color.fromARGB(255, 75, 129, 199)
              : Color.fromARGB(255, 51, 48, 48),
          borderRadius: BorderRadius.circular(
            12.0,
          ),
          border: Border.all(
            color: isHovering ? Color(0x000567B8) : Colors.white,
          ),
        ),
        margin: const EdgeInsets.only(top: 10.0),
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: FaIcon(
                  widget.iconData,
                  size: 20.0,
                ),
              ),
            ),
            //
            const SizedBox(
              width: 12.0,
            ),
            //
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                Text(
                  widget.subtitle,
                  style: const TextStyle(fontSize: 14.0, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
