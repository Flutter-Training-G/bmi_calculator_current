import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({
    required this.color,
    this.child,
    this.onTap
  });

  final Color? color;
  final Widget? child;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: child,
        margin: EdgeInsets.all(15),
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
