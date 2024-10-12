import 'package:e_commerce_mobile_app/presentation/auth/bloc/ages_display_cubit.dart';
import 'package:e_commerce_mobile_app/presentation/auth/bloc/ages_display_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AgesRange extends StatelessWidget {
  const AgesRange({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      child: BlocBuilder<AgesDisplayCubit, AgesDisplayStates>(
        builder: (context, state) {
          if (state is AgesLoading) {
            return const Center(
              child: CircularProgressIndicator(color: Colors.white,),
            );
          } else if (state is AgesFailure) {
            return Text(
              state.message,
            );
          } else if (state is AgesSuccess) {
            return SizedBox(
              height: MediaQuery.of(context).size.height/2,
              child: ListView.separated(
                  itemBuilder: (context, index) =>
                      Text(state.data[index].data()['value']??"null",
                      style: const TextStyle(fontSize: 18,color: Colors.white),),
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 20,
                      ),
                  itemCount: state.data.length),
            );
          }
          return Container(
            height: MediaQuery.of(context).size.height/2,
          );
        },
      ),
    );
  }
}
