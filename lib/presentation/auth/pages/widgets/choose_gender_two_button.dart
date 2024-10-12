import 'package:e_commerce_mobile_app/common/widgets/button/basic_app_button.dart';
import 'package:flutter/material.dart';

class ChooseGenderTwoButton extends StatelessWidget {
  const ChooseGenderTwoButton({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        BasicAppButton(onPressed: (){},title: "Man",width: width*.4,),
        const SizedBox(width: 20,),
        BasicAppButton(onPressed: (){},title: "women",width: width*.4,),
      ],
    );
  }
}