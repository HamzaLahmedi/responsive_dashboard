import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/views/widgets/Custom_drawer.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_and_quick_inovoice.dart';
import 'package:responsive_dashboard/views/widgets/my_card.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          //  flex: 1,
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: AllExpensesAndQuickInovoice(),
        ),
        Expanded(child: MyCard())
      ],
    );
  }
}
