
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:newflutter/home/hades/hades_name_item.dart';
import 'package:newflutter/main.dart';

class hades_tap extends StatelessWidget{
  final List<String>  hadesnames=["الحديث الاول","الحديث الثاني","الحديث الثالث","الحديث الرابع",
    "الحديث الخامس","الحديث السادس","الحديث السابع","الحديث الثامن","الحديث التاسع","الحديث العاشر","الحديث الحادي عشر",
    "الحديث الثاني عشر","الحديث الثالث عشر","الحديث الرابع عشر","الحديث الخامس عشر","الحديث الشادس عشر","الحديث السابع عشر ","الحديث الثامن عشر",
    "الحديث التاسع عشر","الحديث العشرون","الحديث الحادي والعشرون","الحديث الثاني والعشرون","الحديث الثالث والعشرون","الحديث الرابع والعشرون","الحديث الخامس والعشرون",
    "الحديث السادس والعشرون","الحديث السابع والعشرون","الحديث الثامن والعشرون","الحديث التاسع والعشرون","الحديث الثلاثون","الحديث الحادي والثلاثون",
    "الحديث الثاني والثلاثون","الحديث الثالث والثلاثون","الحديث الرابع والثلاثون","الحديث الخامس والثلاثون","الحديث السادس والثلاثون","الحديث السابع والثلاثون",
    "الحديث الثامن والثلاثون","الحديث التاسع والثلاثون","الحديث الاربعون","الحديث الحادي والاربعون","الحديث الثاني والاربعون","الحديث الثالث والاربعون",
    "الحديث الرابع والاربعون","الحديث الخامس والاربعون","الحديث السادس والاربعون","الحديث السادس والاربعون","الحديث السابع والاربعون","الحديث الثامن والاربعون",
    "الحديث التاسع والاربعون","الحديث الخمسون",];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
            child: Image.asset('assets/image/hadeslogo.png')),
        Container(
          height: 1,
          width: double.infinity,
          color: mythemdata.primaryColor,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('hades name',style: TextStyle(fontSize: 25),),
        ),
        Container(
          height: 1,
          width: double.infinity,
          color: mythemdata.primaryColor,
        ),
        Expanded(
          flex: 3,
          child: Container(
              child:ListView.separated
                (separatorBuilder: (buildcotext,index){
                return Container(
                  height: 1,
                  width: double.infinity,
                  color: mythemdata.primaryColor,
                );
              },

                itemBuilder: (buildcotext,index){
                  return hadesnameitem(hadesnames[index], index);
                },itemCount:hadesnames.length,



              )

          ),
        ),
      ],
    );

  }
}