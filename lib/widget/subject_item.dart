import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_course_app_ui/page/detail_screen.dart';
import 'package:online_course_app_ui/theme.dart';

class SubjectItem extends StatelessWidget {
  final String name;
  final String imageUrl;

  SubjectItem({required this.name, required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailScreen()));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: Container(
          height: 155.h,
          width: 150.w,
          color: whiteColor,
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  '$imageUrl',
                  width: 80,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Align(
                alignment: Alignment.center,
                child: Text.rich(
                  TextSpan(children: [
                    TextSpan(
                        text: ' $name',
                        style: blackTextStyle.copyWith(fontSize: 14))
                  ]),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Align(
                alignment: Alignment.center,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: ' 10/month',
                          style: regularTextStyle.copyWith(fontSize: 14))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/star.png',
                      width: 20,
                    ),
                  ),
                  Align(alignment: Alignment.center, child: Text('4.5'))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
