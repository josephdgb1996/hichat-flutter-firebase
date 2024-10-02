import 'package:flutter/material.dart';
import 'package:app/src/@core/statics/assets/assets.dart';
import 'package:app/src/@core/utilities/text_utilities.dart';

enum SocialName { facebook, google, apple }

class SocialButton extends StatelessWidget {
  final SocialName socialName;
  const SocialButton({super.key, required this.socialName});

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = OutlinedButton.styleFrom(
      minimumSize: const Size.fromHeight(50),
      
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.red, width: 10),
        borderRadius: BorderRadius.circular(5.0),
        
      ),
    );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: OutlinedButton.icon(
        style: buttonStyle,
        onPressed: () {},
        label: Text("Continue with ${capitalizeSocialName()}"),
        icon: Image.asset(
          sociaLogo(),
          height: 25,
        ),
      ),
    );
  }

  String capitalizeSocialName() {
    return TextUtilities.toTitleCase(socialName.name);
  }

  String sociaLogo() {
    switch (socialName) {
      case SocialName.facebook:
        return AppLogos.facebook;
      case SocialName.google:
        return AppLogos.google;
      case SocialName.apple:
        return AppLogos.apple;
    }
  }
}
