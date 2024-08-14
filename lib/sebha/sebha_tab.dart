import 'package:flutter/material.dart';
import 'package:islamiapp/appcolores.dart';


class SebhaTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        SizedBox(height: 30),
        Center(child: Image.asset('assets/images/body of seb7a.png',)

    ),

        Text(
          'عدد التسبيحات',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Container(decoration: BoxDecoration(
          color: Appcolores.primarylightColor,borderRadius: BorderRadius.circular(20)
        ),
        height: 81,width: 69,),
        SizedBox(height: 20,),
        Container(
          decoration: BoxDecoration(
            color: Appcolores.primarylightColor,borderRadius: BorderRadius.circular(20),
          ),
          height: 51,width: 137,
          child: Text('سبحان الله')),



      ],
    );
  }
}
