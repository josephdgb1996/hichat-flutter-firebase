import 'package:app/src/@core/widgets/custom_text_field.dart';
import 'package:app/src/@core/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class FillProfileScreen extends StatelessWidget {
  const FillProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fill Your Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(200),
                  ),
                ),
                Positioned(
                  bottom: 5,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Icon(Icons.edit, color: Colors.white),
                  ),
                ),
              ],
            ),
            CustomTextField(),
            CustomTextField(),
            CustomTextField(),
            CustomTextField(),
            CustomTextField(),
            RoundedButton(text: "Continue")
          ],
        ),
      ),
    );
  }
}
