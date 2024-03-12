import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses.dart';
import 'package:responsive_dashboard/views/widgets/quick_inovoice.dart';

class AllExpensesAndQuickInovoice extends StatelessWidget {
  const AllExpensesAndQuickInovoice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 40,
        ),
        AllExpenses(),
        SizedBox(
          height: 24,
        ),
        QuickInovoice(),
      ],
    );
  }
}