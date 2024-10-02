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
        side: const BorderSide(color: Colors.red, width: 10),
        borderRadius: BorderRadius.circular(5.0),
      ),
    );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: OutlinedButton.icon(
        style: buttonStyle,
        onPressed: () {},
        label: Text("Continue with ${TextUtilities.toTitleCase(socialName.name)}"),
        icon: _buildIcon(),
      ),
    );
  }

Widget _buildIcon() {
  final Map<SocialName, String> logos = {
    SocialName.facebook: AppLogos.facebook,
    SocialName.google: AppLogos.google,
    SocialName.apple: AppLogos.apple,
  };
  
  return Image.asset(logos[socialName]!, height: 25);
}
}
