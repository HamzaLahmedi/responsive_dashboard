import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/views/widgets/latest_transaction.dart';
import 'package:responsive_dashboard/views/widgets/quick_inovoice_form.dart';
import 'package:responsive_dashboard/views/widgets/quick_inovoice_header.dart';

class QuickInovoice extends StatelessWidget {
  const QuickInovoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInovoiceHeader(),
          LatestTransaction(),
          Divider(
            color: Color(0xffF1F1F1),
            height: 48,
          ),
          QuickInovoiceForm(),
        ],
      ),
    );
  }
}
