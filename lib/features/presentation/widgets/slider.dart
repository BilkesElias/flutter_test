import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SliderWidget extends StatefulWidget {
  final bool isArrowBackPressed;
  final VoidCallback onArrowPressed;

  const SliderWidget({
    Key? key,
    required this.isArrowBackPressed,
    required this.onArrowPressed,
  }) : super(key: key);

  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  @override
  Widget build(BuildContext context) {
    return  widget.isArrowBackPressed? SvgPicture.asset('assets/icons/right_slider.svg'):SvgPicture.asset('assets/icons/left_slider.svg');
  }
}