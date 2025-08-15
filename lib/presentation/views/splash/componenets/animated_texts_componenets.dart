import 'package:flutter/material.dart';

class AnimatedImageContainer extends StatefulWidget {
  const AnimatedImageContainer({Key? key, this.height = 300, this.width = 250})
      : super(key: key);
  final double? width;
  final double? height;

  @override
  AnimatedImageContainerState createState() => AnimatedImageContainerState();
}

class AnimatedImageContainerState extends State<AnimatedImageContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final value = _controller.value;
        return Transform.translate(
          offset: Offset(0, 2 * value),
          child: Container(
            height: widget.height!,
            width: widget.width!,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: const LinearGradient(colors: [
                Colors.blue,
                Colors.pinkAccent,
              ]),
              boxShadow: const [
                BoxShadow(
                  color: Colors.blue,
                  offset: Offset(-2, 0),
                  blurRadius: 20,
                ),
                BoxShadow(
                  color: Colors.pink,
                  offset: Offset(2, 0),
                  blurRadius: 20,
                ),
              ],
            ),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Image.asset(
                'assets/images/logo.png',
                // height: Responsive.isLargeMobile(context)
                //     ? MediaQuery.sizeOf(context).width * 0.2
                //     : Responsive.isTablet(context)
                //         ? MediaQuery.sizeOf(context).width * 0.14
                //         : 200,
                // width: Responsive.isLargeMobile(context)
                //     ? MediaQuery.sizeOf(context).width * 0.2
                //     : Responsive.isTablet(context)
                //         ? MediaQuery.sizeOf(context).width * 0.14
                //         : 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
    );
  }
}
