import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/custom_dot_indicator.dart';
import 'package:responsive_dashboard/views/widgets/my_cards_section.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currentIndex});
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 6),
          child: CustomDotIndicator(isActive: index == currentIndex),
        ),
      ),
    );
  }
}
