import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/range_options.dart';

class AllExpansesheader extends StatelessWidget {
  const AllExpansesheader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
         Text(
          'All Expenses',
          style: AppStyles.styleSemiBold16,
        ),
         Expanded(
          child: SizedBox(),
        ),
        RangeOptions()
      ],
    );
  }
}


