import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/features/home/ui/widgets/doctors_list/doctors_shimmer_loading.dart';
import 'package:flutter_complete_project/features/home/ui/widgets/speciality_shimmer_loading.dart';
import '../../../../core/helpers/spacing.dart';
import '../../logic/home_cubit.dart';
import '../../logic/home_state.dart';
import 'doctors_list_view.dart';
import 'speciality_list_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecializationsBlocBuilder extends StatelessWidget {
  const SpecializationsBlocBuilder({super.key});

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
            return DoctorsSpecialityListView(
              specializationsDataList: specializationsList ?? [],
            );
          },
          //LOADING DATA
          specializationsLoading: () => setupLoading(),
          //ERROR OCCURED
          specializationsError: (error) => SizedBox.shrink(),
          //DEFAULT STATE
          orElse: () => Container(),
        );
      },
    );
  }
    /// shimmer loading for specializations and doctors
  Widget setupLoading() {
    return Expanded(
      
      child: Column(
        children: [
          const SpecialityShimmerLoading(),
          verticalSpace(8),
          const DoctorsShimmerLoading(),
        ],
      ),
    );
  }
}