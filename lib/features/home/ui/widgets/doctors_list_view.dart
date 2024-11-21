import 'package:flutter/widgets.dart';
import 'package:flutter_complete_project/core/helpers/spacing.dart';
import 'package:flutter_complete_project/core/theming/styles.dart';
import 'package:flutter_complete_project/features/home/data/models/specializations_response_model.dart';
import 'package:flutter_complete_project/features/home/ui/widgets/doctors_list_view_item.dart';
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
