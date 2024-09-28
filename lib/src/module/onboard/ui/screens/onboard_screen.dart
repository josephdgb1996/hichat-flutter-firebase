import 'package:app/src/@core/widgets/rounded_button.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const SizedBox(
        height: 150,
        child: Center(child: RoundedButton(text: "Get Started")),
      ),
      body: GestureDetector(
        onPanUpdate: (details) {
          // Swiping in right direction.
          if (details.delta.dx > 0) {
            print("right");
          }

          // Swiping in left direction.
          if (details.delta.dx < 0) {
            print("left");
          }
        },
        child: Column(children: [
          Expanded(
              child: Container(
                  color: Colors.red,
                  child: PageView(
                    children: const [
                      Text("1"),
                      Text("2"),
                      Text("3"),
                      Text("4"),
                    ],
                  ))),
          Container(
            color: Colors.purple,
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Welcome to Hichat!",
                  style: TextStyle(fontSize: 30),
                ),
                const Text("The best messenger and chat app of the century to make your day great"),
                DotsIndicator(
                  dotsCount: 3,
                  position: 2,
                  decorator: const DotsDecorator(activeShape: RoundedRectangleBorder()),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class _OnboardImage extends StatelessWidget {
  const _OnboardImage();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class _OnboardText extends StatelessWidget {
  const _OnboardText();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
