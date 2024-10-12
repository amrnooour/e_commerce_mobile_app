import 'package:e_commerce_mobile_app/common/helper/bottom_sheet/app_bottom_sheet.dart';
import 'package:e_commerce_mobile_app/common/widgets/button/basic_app_button.dart';
import 'package:e_commerce_mobile_app/presentation/auth/bloc/ages_display_cubit.dart';
import 'package:e_commerce_mobile_app/presentation/auth/pages/widgets/ages_range.dart';
import 'package:e_commerce_mobile_app/presentation/auth/pages/widgets/choose_age_container.dart';
import 'package:e_commerce_mobile_app/presentation/auth/pages/widgets/choose_gender_two_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GenderAndAgeSelectionBody extends StatelessWidget {
  const GenderAndAgeSelectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 161,
          ),
          const Text(
            "Tell us About yourself",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 49,
          ),
          const Text(
            "Who do you shop for ?",
          ),
          const SizedBox(
            height: 22,
          ),
          const ChooseGenderTwoButton(),
          const SizedBox(
            height: 56,
          ),
          const Text(
            "How Old are you ?",
          ),
          const SizedBox(
            height: 13,
          ),
          ChooseAgeContainer(
            onPressed: () {
              AppBottomSheet.display(context,
               MultiBlocProvider(
                providers: [
                  BlocProvider.value(value: context.read<AgesDisplayCubit>()),
                  BlocProvider.value(value: context.read<AgesDisplayCubit>()..getAges()),
                ],
                child: const AgesRange()));
            },
          ),
          const Spacer(),
          BasicAppButton(
            onPressed: () {},
            title: "finish",
          ),
          const SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
