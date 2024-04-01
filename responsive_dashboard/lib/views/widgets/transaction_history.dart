import 'dart:js';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/transaction_history_list_view.dart';

class TransactinHistory extends StatelessWidget {
  const TransactinHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const SizedBox(
          height: 20,
        ),
        Text(
          '13 April 2022',
          style:
              AppStyles.styleMedium16(context).copyWith(color: const Color(0xffaaaaaa)),
        ),
        const SizedBox(
          height: 16,
        ),
        const TransactionHistoryListView(),
      ],
    );
  }
}

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text(
          'Transaction History',
          style: AppStyles.styleSemiBold20(context),
        ),
        Text(
          'See all',
          style: AppStyles.styleMedium16(context).copyWith(
            color: const Color(0XFF4EB7F2),
          ),
        ),
      ],
    );
  }
}
