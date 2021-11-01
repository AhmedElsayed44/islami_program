import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newflutter/home/quran/sura_ditals_screen.dart';

class suranameitem extends StatelessWidget{
  String suraName;
  int suraIndex;
  suranameitem(this.suraName,this.suraIndex);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, suraditals.routName,
          arguments: suraditalsargs(suraName, suraIndex)
        );

      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('${suraName}',style: TextStyle(
              fontSize: 18
          ),),
        ],
      ),
    );
  }
}