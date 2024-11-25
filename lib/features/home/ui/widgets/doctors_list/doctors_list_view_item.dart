// import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_complete_project/core/helpers/spacing.dart';
import 'package:flutter_complete_project/core/theming/styles.dart';
import 'package:flutter_complete_project/features/home/data/models/specializations_response_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListViewItem extends StatelessWidget {
  final int itemIndex;
  final Doctors? doctorData;
  const DoctorsListViewItem(
      {Key? key, required this.itemIndex, required this.doctorData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          // chached network image
    //       CachedNetworkImage(
    //     imageUrl: "https://instagram.fjrs2-2.fna.fbcdn.net/v/t51.2885-19/448830718_3541514636103918_274332779009961987_n.jpg?_nc_ht=instagram.fjrs2-2.fna.fbcdn.net&_nc_cat=106&_nc_ohc=5UtvMRLF6T4Q7kNvgFbsO-e&_nc_gid=940e50038cf84e5dacc0a29d65f29293&edm=APoiHPcBAAAA&ccb=7-5&oh=00_AYC_K42DWNTbceOE-MEYLz7Eyv_5sUvRtunj5Ug_grFr_w&oe=67441C00&_nc_sid=22de04",
    //     placeholder: (context, url) => CircularProgressIndicator(),
    //     errorWidget: (context, url, error) => Icon(Icons.error),
    //  ),
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.network(
              width: 110.w,
              height: 120.h,
                  'https://static2.bigstockphoto.com/2/9/4/large1500/4929477.jpg',
              fit: BoxFit.cover,
            ),
          ),
          horizontalSpace(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctorData!.name ?? 'Dr. Ghazi Hamada',
                  style: TextStyles.font18DarkblueBold,
                ),
                verticalSpace(5),
                Text(
                  doctorData!.phone ?? 'Degree | 056 123 4567',
                  style: TextStyles.font12GreyMedium,
                  overflow: TextOverflow.ellipsis,
                ),
                verticalSpace(5),
                Text(
                  doctorData!.email ?? 'email@example.com',
                  style: TextStyles.font12GreyMedium,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
