import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_and_quick_inovoice.dart';
import 'package:responsive_dashboard/views/widgets/income_section.dart';
import 'package:responsive_dashboard/views/widgets/my_cards_and_transactions_history.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInovoice(),
          SizedBox(
            height: 24,
          ),
          MyCardAndTransactionHistory(),
          SizedBox(
            height: 24,
          ),
          IncomeSection(),
        ],
      ),
    );
  }
}