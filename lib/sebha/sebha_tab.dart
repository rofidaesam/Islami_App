import 'package:flutter/material.dart';
import 'package:islamiapp/appcolores.dart';
import 'package:provider/provider.dart';

import '../provider/app_convig_provider.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  @override
  int count = 0;
  double turn = 0;
  int index = 0;

  List<String> azkhar = [
    'الله أكبر',
    'لا إله إلا الله',
    'الحمد لله',
    'سبحان الله'
  ];

  Widget build(BuildContext context) {
    var provider = Provider.of<AppConvigProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Align(
          alignment: Alignment.center,
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.height * .2),
                child: Image.asset("assets/images/head of seb7a.png"),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .05),
                child: AnimatedRotation(
                    duration: Duration(milliseconds: 300),
                    turns: turn,
                    child: Image.asset('assets/images/body of seb7a.png')),
              )
            ],
          ),
        ),
        SizedBox(
          height: 43,
        ),
        Column(
          children: [
            Text(
              'عدد التسبيحات',
            ),
            SizedBox(
              height: 22,
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Text(count.toString()),
            ),
            SizedBox(
              height: 22,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor),
                onPressed: () {
                  count++;
                  turn+=.03;
                  if (count == 34) {
                    count = 0;
                    index++;
                    if (index == azkhar.length) {
                      index = 0;
                    }
                  }
                  setState(() {});
                },
                child: Text(azkhar[index],
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      color: Appcolores.blackColor,
                    )))
          ],
        ),
      ],
    );
  }
}
