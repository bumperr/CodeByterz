// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:scorelah/custom_animate_border.dart';

class AnimatedTextField extends StatefulWidget {
  final String label;
  final Widget? suffix;
  final Widget? prefix;
  final bool isPassword;
  const AnimatedTextField({Key? key, required this.label, required this.suffix, required this.prefix, required this.isPassword})
      : super(key: key);

  @override
  State<AnimatedTextField> createState() => _AnimatedTextFieldState();
}


class _AnimatedTextFieldState extends State<AnimatedTextField>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  late Animation<double> alpha;
  final focusNode = FocusNode();

  final textFieldFocusNode = FocusNode();
  bool _obscured = true;

  void _toggleObscured() {
    setState(() {
      _obscured = !_obscured;
      if (textFieldFocusNode.hasPrimaryFocus) {
        return; // If focus is on text field, dont unfocus
      }
      
      textFieldFocusNode.canRequestFocus =
          false; // Prevents focus if tap on eye
    });
  }

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 400),
    );
    final Animation<double> curve =
        CurvedAnimation(parent: controller!, curve: Curves.easeInOut);
    alpha = Tween(begin: 0.0, end: 1.0).animate(curve);

    // controller?.forward();
    controller?.addListener(() {
      setState(() {});
    });
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        controller?.forward();
      } else {
        controller?.reverse();
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      decoration: BoxDecoration(
        color: Color(0x0fff2f2f),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Theme(
        data: ThemeData(
            colorScheme: Theme.of(context).colorScheme.copyWith(
                  primary: Color(0xFF828282),
                )),
        child: CustomPaint(
          painter: CustomAnimateBorder(alpha.value),
          child: widget.isPassword?
          TextField(
            obscureText: _obscured,
            enableSuggestions: false,
            autocorrect: false,
            focusNode: focusNode,
            decoration: InputDecoration(
              label: Text(widget.label,
              style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.w600,
                ),
              
              ),
              border: InputBorder.none,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              suffixIcon: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                  child: GestureDetector(
                    onTap: _toggleObscured,
                    child: Icon(
                      _obscured
                          ? Icons.visibility_rounded
                          : Icons.visibility_off_rounded,
                      size: 24,
                    ),
                  ),
              ),
              prefixIcon: Align(
                widthFactor: 1.0,
                heightFactor: 1.0,
                child: widget.prefix
                ),
            ),
          ):
          TextField(
                    focusNode: focusNode,
                    decoration: InputDecoration(
                      label: Text(
                        widget.label,
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      suffixIcon: Align(
                          widthFactor: 1.0,
                          heightFactor: 1.0,
                          child: widget.suffix),
                      prefixIcon: Align(
                          widthFactor: 1.0,
                          heightFactor: 1.0,
                          child: widget.prefix),
                    ),
                  ),
        ),
      ),
    );
  }
}
