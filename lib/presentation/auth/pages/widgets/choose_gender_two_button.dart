import 'package:e_commerce_mobile_app/common/widgets/button/basic_app_button.dart';
import 'package:e_commerce_mobile_app/core/configs/theme/app_colors.dart';
import 'package:e_commerce_mobile_app/presentation/auth/bloc/gender_selection_cubit.dart';
import 'package:e_commerce_mobile_app/presentation/auth/bloc/signup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChooseGenderTwoButton extends StatelessWidget {
  const ChooseGenderTwoButton({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    int genderIndex = 0;
    return BlocBuilder<GenderSelectionCubit, int>(
      builder: (context, state) {
        return Row(
          children: [
            BasicAppButton(
              onPressed: () {
                genderIndex = 1;
                context.read<GenderSelectionCubit>().selectGender(genderIndex);
                context.read<SignupCubit>().gender =
                    context.read<GenderSelectionCubit>().selectedIndex;
              },
              backgroundColor:
                  state == 1 ? AppColors.primary : AppColors.secondBackground,
              title: "Man",
              width: width * .4,
            ),
            const SizedBox(
              width: 20,
            ),
            BasicAppButton(
              onPressed: () {
                genderIndex = 0;
                context.read<GenderSelectionCubit>().selectGender(genderIndex);
                context.read<SignupCubit>().gender =
                    context.read<GenderSelectionCubit>().selectedIndex;
              },
              backgroundColor:
                  state != 1 ? AppColors.primary : AppColors.secondBackground,
              title: "women",
              width: width * .4,
            ),
          ],
        );
      },
    );
  }
}
