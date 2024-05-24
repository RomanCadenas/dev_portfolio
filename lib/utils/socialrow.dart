import 'package:dev_portfolio/utils/animated_icon_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialRow extends StatelessWidget {
  const SocialRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedIconButton(
          iconData: FontAwesomeIcons.android,
          onTap: () {},
        ),
        const SizedBox(
          width: 8.0,
        ),
        AnimatedIconButton(
          iconData: FontAwesomeIcons.apple,
          onTap: () {},
        ),
        const SizedBox(
          width: 8.0,
        ),
        AnimatedIconButton(
          iconData: FontAwesomeIcons.microsoft,
          onTap: () {},
        ),
        const SizedBox(
          width: 8.0,
        ),
        AnimatedIconButton(
          iconData: FontAwesomeIcons.linux,
          onTap: () {},
        ),
      ],
    );
  }
}
