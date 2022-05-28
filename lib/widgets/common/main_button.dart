import 'package:flutter/material.dart';
import 'package:quizzle/configs/configs.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    Key? key,
    this.title = '   ',
    required this.onTap,
    this.enabled = true,
    this.child,
    this.color,
    this.textColor,
  }) : super(key: key);

  final String title;
  final VoidCallback onTap;
  final bool enabled;
  final Widget? child;
  final Color? color;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: SizedBox(
        height: 55,
        child: InkWell(
          borderRadius: BorderRadius.circular(kButtonCornerRadius),
          onTap: enabled == false ? null : onTap,
          child: Ink(
            width: double.maxFinite,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: child ??
                  Center(
                    child: Text(
                      title,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: textColor ?? kOnSurfaceTextColor),
                    ),
                  ),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kButtonCornerRadius),
                color: color ?? ahmedGreen),
          ),
        ),
      ),
    );
  }
}
