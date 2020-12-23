import 'package:flutter/material.dart';
import 'package:flutter_language_app/theme/colors.dart';
import 'package:flutter_language_app/theme/dimens.dart';

import 'level_english_page.dart';

class TimeGoalPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TimeGoalPageState();
}

class TimeGoalPageState extends State<TimeGoalPage> {
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(
          backgroundColor: theme.backgroundColor,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: xxLargeSize(context)),
                child: Text("!چـقـدر وقـت مـیذاری",
                    textAlign: TextAlign.center,
                    style: theme.textTheme.headline4
                        .copyWith(color: AppColors.textColorLight)),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: mediumSize(context)),
                child: Text(
                  "مسیر موفقیت و مسیر شکست تقریبا شبیه هم هستند\n!ما به شما کمک خواهیم کرد تا مکان مناسب را برای شروع درست کنید",
                  style: theme.textTheme.caption.copyWith(
                    color: AppColors.textColorDark,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                child: levelEnglish(context, "15 دقیقه در روز", "image"),
                margin: EdgeInsets.only(top: smallSize(context)),
              ),
              levelEnglish(context, "30 دقیقه در روز", "image"),
              levelEnglish(context, "60 دقیقه در روز", "image"),
              levelEnglish(context, "مطمئن نیستم!", "image"),
            ],
          ),
        ));
  }
}