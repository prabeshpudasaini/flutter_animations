import 'dart:math';

import 'package:flutter/material.dart';

class CircleClipper extends CustomClipper<Path> {
  const CircleClipper();
  @override
  Path getClip(Size size) {
    var path = Path();

    final rect = Rect.fromCircle(
      center: Offset(size.width / 2, size.height / 2),
      radius: size.width / 2,
    );

    path.addOval(rect);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

Color getRandomColor() => Color(
      0xFF000000 + Random().nextInt(0x00FFFFFF),
    );

class TweenAnimationView extends StatefulWidget {
  const TweenAnimationView({super.key});

  @override
  State<TweenAnimationView> createState() => _TweenAnimationViewState();
}

class _TweenAnimationViewState extends State<TweenAnimationView> {
  var _color = getRandomColor();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Tween Animation'),
      ),
      body: Center(
        child: ClipPath(
          clipper: const CircleClipper(),
          child: TweenAnimationBuilder(
            tween: ColorTween(
              begin: getRandomColor(),
              end: _color,
            ),
            onEnd: () {
              setState(() {
                _color = getRandomColor();
              });
            },
            duration: const Duration(seconds: 1),
            child: Container(
              color: Colors.red,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width,
            ),
            builder: (context, Color? color, child) {
              return ColorFiltered(
                colorFilter: ColorFilter.mode(
                  color!,
                  BlendMode.srcATop,
                ),
                child: child,
              );
            },
          ),
        ),
      ),
    );
  }
}
