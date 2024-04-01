import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/models/all_expanses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  final items = [
    const AllExpansesItemModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      date: 'April 2022',
      price: r'$20,129',
    ),
    const AllExpansesItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'April 2022',
      price: r'$20,129',
    ),
    const AllExpansesItemModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'April 2022',
      price: r'$20,129',
    ),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
        // children: items.map((e) => Expanded(child: AllexpensesItem(itemModel: e))).toList()
        children: items.asMap().entries.map((e) {
      int index = e.key;
      var item = e.value;
      return Expanded(
        child: GestureDetector(
          onTap: () {
            updateIndex(index);
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
            child: AllexpensesItem(
              itemModel: item,
              isSelected: selectedIndex == index,
            ),
          ),
        ),
      );
    }).toList());
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
