import 'package:flutter/material.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xfffafafa),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          const Text('Monthly'),
          const SizedBox(
            width: 18,
          ),
          Transform.rotate(
            angle: -1.5708,
            child: const Icon(Icons.arrow_back_ios_new_outlined),
          ),
        ],
      ),
    );
  }
}