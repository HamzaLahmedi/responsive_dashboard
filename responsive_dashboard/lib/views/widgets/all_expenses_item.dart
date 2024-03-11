import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/models/all_expanses_item_model.dart';
import 'package:responsive_dashboard/views/widgets/inactive_and_active_all_expaneses_item.dart';

class AllexpensesItem extends StatelessWidget {
  const AllexpensesItem({
    super.key,
    required this.itemModel,
    required this.isSelected,
  });

  final AllExpansesItemModel itemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpanesesItem(itemModel: itemModel)
        : InActiveAllExpanesesItem(itemModel: itemModel);
  }
}
