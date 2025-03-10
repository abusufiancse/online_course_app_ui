import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_course_app_ui/theme.dart';

class OutlineItem extends StatelessWidget {
  final String? imageUrl;
  final String? name;
  final String? time;
  OutlineItem({this.name, this.imageUrl, this.time});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Container(
        height: 90.h,
        margin: EdgeInsets.all(16.0),
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xffFFFFFF),
              Color(0xffFFFFFF),
            ],
          ),
          color: Colors.purple[900],
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                '$imageUrl',
                width: 63,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '$name',
                    style: blackTextStyle.copyWith(
                      fontSize: 18.sp,
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Row(
                    children: [
                      Text(
                        '$time',
                        style: greyTextStyle.copyWith(fontSize: 18.sp),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset('assets/play.png', height: 50.h,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
