import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newflutter/home/quran/sura_name_item.dart';
import 'package:newflutter/main.dart';

class quran_tap extends StatelessWidget{
  final List<String>  suranames=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
  ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
  ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
  ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
  ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
  ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
  ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
  ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
  ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
  "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];
  @override
  Widget build(BuildContext context) {
   return Column(
     crossAxisAlignment: CrossAxisAlignment.center,
     children:[ Expanded(
         flex: 1,
         child: Image.asset('assets/image/logo_home.png')
     ),
       Container(
         height: 1,
         width: double.infinity,
         color: mythemdata.primaryColor,
       ),
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Text('sura name',style: TextStyle(fontSize: 25),),
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
               return suranameitem(suranames[index], index);
             },itemCount: suranames.length,



             )

           )
       )
     ],
   );



  }
}