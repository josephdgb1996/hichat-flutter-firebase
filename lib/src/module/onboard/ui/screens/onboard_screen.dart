import 'package:app/src/@core/widgets/rounded_button.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget body = const Column(children: [
      _OnboardImage(),
      SizedBox(
        height: 200,
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          _OnboardText(),
          _OnboardDots(),
        ]),
      ),
    ]);

    Widget bottomNavigation = const SizedBox(
      height: 150,
      child: Center(child: RoundedButton(text: "Get Started")),
    );

    return Scaffold(
      body: GestureDetector(onPanUpdate: _onPanUpdate, child: body),
      bottomNavigationBar: bottomNavigation,
    );
  }

  void _onPanUpdate(DragUpdateDetails details) {
    // Swiping in right direction.
    if (details.delta.dx > 0) {
      print("right");
    }

    // Swiping in left direction.
    if (details.delta.dx < 0) {
      print("left");
    }
  }
}

class _OnboardImage extends StatelessWidget {
  const _OnboardImage();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.red,
        child: PageView(
          // controller:,
          children: const [
          Text("1"),
          Text("2"),
          Text("3"),
          Text("4"),
        ]),
      ),
    );
  }
}

class _OnboardText extends StatelessWidget {
  const _OnboardText();

  @override
  Widget build(BuildContext context) {
    return const Wrap(direction: Axis.vertical, children: [
      Text("Welcome to Hichat!", style: TextStyle(fontSize: 30)),
      Text("The best messenger and chat app of the century to make your day great"),
    ]);
  }
}

class _OnboardDots extends StatelessWidget {
  const _OnboardDots();

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 3,
      position: 2,
      decorator: const DotsDecorator(activeShape: RoundedRectangleBorder()),
    );
  }
}
