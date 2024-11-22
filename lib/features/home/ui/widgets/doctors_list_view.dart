import 'package:flutter/widgets.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';
import '../../data/models/specializations_response_model.dart';
import 'doctors_list_view_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListView extends StatelessWidget {
  final List<Doctors?> doctorsModel;
  const DoctorsListView({super.key, required this.doctorsModel});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: doctorsModel?.length,
        itemBuilder: (context, index) {
          return DoctorsListViewItem(
            itemIndex: index,
            doctorData: doctorsModel[index],
          );
        },
      ),
    );
  }
}
