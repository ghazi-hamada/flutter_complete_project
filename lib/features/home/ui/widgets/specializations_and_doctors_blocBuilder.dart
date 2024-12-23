import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/helpers/spacing.dart';
import '../../logic/home_cubit.dart';
import '../../logic/home_state.dart';
import 'doctors_list_view.dart';
import 'speciality_list_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecializationsAndDoctorsBlocBuilder extends StatelessWidget {
  const SpecializationsAndDoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationsLoading ||
          current is SpecializationsSuccess ||
          current is SpecializationsError,
      builder: (context, state) {
        return state.maybeWhen(
          //LOADED SUCCESSFULLY
          specializationsSuccess: (specializationDataList) {
            var specializationsList =specializationDataList;
            return Expanded(
              child: Column(
                children: [
                  DoctorsSpecialityListView(
                    specializationsDataList: specializationsList ?? [],
                  ),
                  verticalSpace(8.h),
                  DoctorsListView(
                    doctorsModel: specializationsList?[1]?.doctorsList ?? [],
                  ),
                ],
              ),
            );
          },
          //LOADING DATA
          specializationsLoading: () => Center(
            child: SizedBox(
              height: 100.h,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ),
          //ERROR OCCURED
          specializationsError: (error) => SizedBox.shrink(),
          //DEFAULT STATE
          orElse: () => Container(),
        );
      },
    );
  }
}
