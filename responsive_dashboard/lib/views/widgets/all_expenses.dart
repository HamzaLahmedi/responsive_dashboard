import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_items_list_view.dart';
import 'package:responsive_dashboard/views/widgets/all_expensses_header.dart';
import 'package:responsive_dashboard/views/widgets/custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          AllExpansesheader(),
          SizedBox(
            height: 16,
          ),
          AllExpensesItemListView()
        ],
      ),
    );
  }
}

