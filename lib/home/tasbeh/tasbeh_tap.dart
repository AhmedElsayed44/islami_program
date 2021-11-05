
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newflutter/main.dart';

class tasbeh_tap extends StatefulWidget{
  @override
  _tasbeh_tapState createState() => _tasbeh_tapState();
}

class _tasbeh_tapState extends State<tasbeh_tap> {
  int counter=0;

  List<String>tasabeh=['سبحان الله','الله اكبر','الله اكبر '];
  double angle=0;

  int index=0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
     child: Column(
       children: [
         Stack(
           alignment: AlignmentDirectional.topCenter,
           children: [
             Container(

               margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*.08),
               child: Transform.rotate(
                 angle: angle,
                   child: Image.asset('assets/image/bodyseb7a.png')),
             ),
             InkWell(
               onTap: onsbhapreesd,
               child: Container(
                 margin: EdgeInsets.only(left: MediaQuery.of(context).size.height*.08),
                 child: Image.asset('assets/image/headseb7a.png'),
               ),
             )
           ],
         ),
         SizedBox(height: .8,),
         Text('عدد التسبيحات',style: TextStyle(
           fontSize: 25,fontWeight: FontWeight.bold
         ),),
         Container(
           decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
             color: Color(0xffB7935F),
           ),
           padding: EdgeInsets.all(12),
             child: Text('$counter',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
         Container(
           margin: EdgeInsets.only(top: 12),
             decoration: BoxDecoration(borderRadius: BorderRadius.circular(24),
               color: Theme.of(context).primaryColor
             ),
             padding: EdgeInsets.all(12),
             child: Padding(
               padding: const EdgeInsets.only(left: 3,right: 3,bottom: 4),

               child: Text('${tasabeh[index]}',style: TextStyle(color:Colors.white,fontSize: 25,fontWeight:
               FontWeight.bold),),
             ))
       ],
     ),

    );
  }

  void onsbhapreesd(){
    counter++;
    if(counter%33==0){
      if(index==tasabeh.length-1){
        index=0;
      }
      index++;
    }
    setState(() {
   angle+=2;
    });
  }
}