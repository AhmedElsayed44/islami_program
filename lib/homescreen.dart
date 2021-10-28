import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newflutter/home/hades/hades_tap.dart';
import 'package:newflutter/home/quran/quran_tap.dart';
import 'package:newflutter/home/radio/radio_tap.dart';
import 'package:newflutter/home/tasbeh/tasbeh_tap.dart';
import 'package:newflutter/main.dart';

class homescreen extends StatefulWidget{
  static const String routeName='home';

  @override
  _homescreenState createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {

  int currentindex=0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
        Image.asset('assets/image/main_background.png',width: double.infinity,
        fit: BoxFit.cover,),
       Container(
         padding: EdgeInsets.symmetric(vertical:80),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children:[ Image.asset('assets/image/logo_home.png')],
    ),
       ),
       Scaffold(

         appBar: AppBar(
           title: Text('islami',style: TextStyle(
             color: Colors.black,fontSize: 30
           ),),
           centerTitle: true,
         ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: mythemdata.primaryColor
          ),
          child: BottomNavigationBar(
            currentIndex: currentindex,
            onTap: (index){
              currentindex=index;
              setState(() {

              });
            },
            items: [
              BottomNavigationBarItem(

                  icon: ImageIcon(AssetImage('assets/image/icon_quran1.png')),
              label: 'Quran'),
              BottomNavigationBarItem(

                  icon: ImageIcon(AssetImage('assets/image/icon_sebhaa.png')),
                  label: 'tsbeh'),
              BottomNavigationBarItem(

                  icon: ImageIcon(AssetImage('assets/image/icon_quran2.png')),
                  label: 'hades'),
              BottomNavigationBarItem(

                  icon: ImageIcon(AssetImage('assets/image/icon_radio.png')),
                  label: 'radio'),
            ],
          ),
        ),
         body: Container(
           child: views[currentindex],
         ),
      ),
    ]
    );
  }
  List<Widget>views=
  [
    quran_tap(),
    tasbeh_tap(),
    hades_tap(),
    radio_tap()

  ];
}