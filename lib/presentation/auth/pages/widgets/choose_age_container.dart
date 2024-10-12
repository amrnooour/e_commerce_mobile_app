import 'package:e_commerce_mobile_app/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ChooseAgeContainer extends StatelessWidget {
  final void Function()? onPressed;
  const ChooseAgeContainer({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: AppColors.secondBackground,
            borderRadius: BorderRadius.circular(100)),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Text("Age Range"),
            ),
              Icon(
                  Icons.arrow_drop_down_sharp,
                  size: 32,
                )
          ],
        ),
      ),
    );
  }
}
