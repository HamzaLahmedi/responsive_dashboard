import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.backGroundColor, this.textColor});
  final Color? backGroundColor, textColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: backGroundColor ??
              const Color(
                0xff4EB7F2,
              ),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          'Send Money',
          style: AppStyles.styleSemiBold18(context).copyWith(
            color: textColor,
          ),
        ),
      ),
    );
  }
}
