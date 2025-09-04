import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RunwayFadeAnimation extends StatefulWidget {
  const RunwayFadeAnimation({super.key});

  @override
  State<RunwayFadeAnimation> createState() => _RunwayFadeAnimationState();
}

class _RunwayFadeAnimationState extends State<RunwayFadeAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return ShaderMask(
              shaderCallback: (rect) {
                return LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: [0, _controller.value],
                  colors: const [Colors.white, Colors.transparent],
                ).createShader(rect);
              },
              blendMode: BlendMode.dstIn,
              child: SvgPicture.asset(
                "asset/image/svg/Rectangle 9.svg",
                width: 300,
              ),
            );
          },
        ),
      ),
    );
  }
}
