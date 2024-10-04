import 'package:app/src/@core/statics/assets/assets.dart';
import 'package:app/src/@core/widgets/custom_text_field.dart';
import 'package:app/src/@core/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class FillProfileScreen extends StatelessWidget {
  const FillProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Fill Your Profile"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _AvatarPicker(),
            CustomTextField(hintText: "Nombre"),
            CustomTextField(hintText: "Username",),
            CustomTextField(hintText: "Date", suffixIcon: Icon(Icons.calendar_month, color: Colors.grey)),
            CustomTextField(hintText: "Email", suffixIcon: Icon(Icons.email, color: Colors.grey),),
            CustomTextField(hintText: "About",),
            RoundedButton(text: "Continue")
          ],
        ),
      ),
    );
  }
}

class _AvatarPicker extends StatelessWidget {
  const _AvatarPicker();

  @override
  Widget build(BuildContext context) {
    Widget editButton = Container(
      padding: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(color: Theme.of(context).primaryColor, borderRadius: BorderRadius.circular(5.0)),
      child: const Icon(Icons.edit, color: Colors.white),
    );

    Widget profilePlaceholder = CircleAvatar(
      radius: 80,
      backgroundColor: Colors.transparent,
      child: Image.asset(AppImages.profilePlaceholder),
    );

    return Stack(
      children: [
        profilePlaceholder,
        Positioned(bottom: 5, right: 0, child: editButton),
      ],
    );
  }
}
