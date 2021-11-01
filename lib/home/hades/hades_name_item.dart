import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newflutter/home/hades/hades_ditals_screen.dart';
import 'hades_tap.dart';

class hadesnameitem extends StatelessWidget{
  String hadesName;
  int hadesIndex;
  hadesnameitem(this.hadesName,this.hadesIndex);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, hadesditals.routName,
            arguments: hadesditalsargs(hadesName, hadesIndex)
        );

      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('${hadesName}',style: TextStyle(
              fontSize: 18
          ),),
        ],
      ),
    );
  }
}