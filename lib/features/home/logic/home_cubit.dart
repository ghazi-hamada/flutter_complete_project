import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_complete_project/core/helpers/extensions.dart';
import '../../../core/networking/api_error_handler.dart';
import '../data/models/specializations_response_model.dart';
import '../data/repos/home_repo.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(HomeState.initial());
  List<SpecializationsData?>? specializationDataList = [];

  Future<void> getSpecializations() async {
    // emit loading state
    emit(HomeState.specializationsLoading());
    final response = await _homeRepo.getSpecialization();
    response.when(
      // success
      success: (specializationsResponseModel) {
        specializationDataList =
            specializationsResponseModel.specializationDataList ?? [];
        getDoctorsList(specializationId: specializationDataList?.first?.id);

        emit(HomeState.specializationsSuccess(specializationsResponseModel.specializationDataList));
      },
      // error
      failure: (errorHandler) {
        emit(HomeState.specializationsError(errorHandler));
      },
    );
  }

  void getDoctorsList({required int? specializationId}) {
    List<Doctors?>? doctorsList =
        getDoctorsListBySpecializationId(specializationId);

    if (!doctorsList.isNullOrEmpty()) {
      emit(HomeState.doctorsSuccess(doctorsList));
    } else {
      emit(HomeState.doctorsError(ErrorHandler.handle('No doctors found')));
    }
  }

  /// returns the list of doctors based on the specialization id
  getDoctorsListBySpecializationId(specializationId) {
    return specializationDataList
        ?.firstWhere((specialization) => specialization?.id == specializationId)
        ?.doctorsList;
  }
}
