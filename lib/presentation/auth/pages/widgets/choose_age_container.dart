import 'package:e_commerce_mobile_app/core/configs/theme/app_colors.dart';
import 'package:e_commerce_mobile_app/presentation/auth/bloc/age_selection_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChooseAgeContainer extends StatelessWidget {
  final void Function()? onPressed;
  const ChooseAgeContainer({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: BlocBuilder<AgeSelectionCubit, String>(
        builder: (context, state) {
          return Container(
            height: 50,
            decoration: BoxDecoration(
                color: AppColors.secondBackground,
                borderRadius: BorderRadius.circular(100)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text(state),
                ),
                const Icon(
                  Icons.arrow_drop_down_sharp,
                  size: 32,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
