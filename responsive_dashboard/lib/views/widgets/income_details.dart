import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/item_details_model.dart';
import 'package:responsive_dashboard/views/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/views/widgets/item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const items = [
    ItemDetailsModel(
        color: Color(0XFF208CC8), title: 'Design service', value: '40%'),
    ItemDetailsModel(
        color: Color(0XFF4EB7F2), title: 'Design product', value: '25%'),
    ItemDetailsModel(
        color: Color(0XFF064061), title: 'Product royalti', value: '20%'),
    ItemDetailsModel(color: Color(0XFFE2DECD), title: 'Other', value: '22%'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => ItemDetails(itemDetailsModel: e)).toList(),
    );
    /*return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ItemDetails(itemDetailsModel: items[index]);
      },
    );*/
  }
}
