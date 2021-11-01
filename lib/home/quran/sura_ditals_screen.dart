import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:newflutter/main.dart';

class suraditals extends StatefulWidget {
  static const String routName = 'suraditals';

  @override
  _suraditalsState createState() => _suraditalsState();
}

class _suraditalsState extends State<suraditals> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as suraditalsargs;
    loadsuraditals(args.suraIndex);
    return Stack(
      children: [
        Image.asset(
          'assets/image/main_background.png',
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              '${args.suraName}',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            centerTitle: true,
          ),
          body: Container(
            margin: EdgeInsets.symmetric(vertical: 40,horizontal: 24),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: verses.isEmpty
                  ? Center(child: CircularProgressIndicator())
                  : ListView.separated(
                separatorBuilder: (buildcotext,index){
              return Container(
              height: 1,
              width: double.infinity,
              color: mythemdata.primaryColor,
              );
              },
                      itemBuilder: (buildcontext, index) {
                        return Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              verses[index]+'{${index+1}}',
                              style: TextStyle(fontSize: 18),
                              textAlign: TextAlign.center,
                              textDirection: TextDirection.rtl,
                            ),
                          ),
                        );
                      },
                      itemCount: verses.length-1,
                    )),
        ),
      ],
    );
  }

  void loadsuraditals(int index) async {
    String filecontent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> ayat = filecontent.split('\n');

    setState(() {
      this.verses = ayat;
    });
  }
}

class suraditalsargs {
  String suraName;
  int suraIndex;
  suraditalsargs(this.suraName, this.suraIndex);
}
