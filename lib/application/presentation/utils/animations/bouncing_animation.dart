import 'package:flutter/material.dart';

class AnimatedContentWidget extends StatefulWidget {
  final Widget initialContent;
  final Widget newContent;
  final bool animate;

  const AnimatedContentWidget({
    super.key,
    required this.initialContent,
    required this.newContent,
    required this.animate,
  });

  @override
  _AnimatedContentWidgetState createState() => _AnimatedContentWidgetState();
}

class _AnimatedContentWidgetState extends State<AnimatedContentWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    _animation = Tween<Offset>(
      begin: Offset.zero,
      end: Offset(-1.0, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    if (widget.animate) {
      _controller.forward();
    }
  }

  @override
  void didUpdateWidget(covariant AnimatedContentWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.animate && !oldWidget.animate) {
      _controller.forward(from: 0.0);
    } else if (!widget.animate && oldWidget.animate) {
      _controller.reverse(from: 1.0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Transform.translate(
          offset: _animation.value,
          child: child,
        );
      },
      child: widget.animate ? widget.newContent : widget.initialContent,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
