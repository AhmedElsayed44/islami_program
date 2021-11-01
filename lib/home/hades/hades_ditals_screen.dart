import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:newflutter/main.dart';
import 'hades_tap.dart';

class hadesditals extends StatefulWidget {
  static const String routName = 'hadesditals';

  @override
  _hadesditalsState createState() => _hadesditalsState();
}

class _hadesditalsState extends State<hadesditals> {
  List<String> hades = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as hadesditalsargs;
    loadhadesditals(args.hadesIndex);
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
              '${args.hadesName}',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            centerTitle: true,
          ),
          body: Container(
              margin: EdgeInsets.symmetric(vertical: 40,horizontal: 24),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: hades.isEmpty
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
                        hades[index],
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                  );
                },
                itemCount: hades.length-1,
              )),
        ),
      ],
    );
  }

  void loadhadesditals(int index) async {
    String filecontent =
    await rootBundle.loadString('assets/file/${index+ 1}.txt');
    List<String> hadescontent = filecontent.split('\n');
    this.hades = hadescontent;
    setState(() {

    });

  }
}

class hadesditalsargs {
  String hadesName;
  int hadesIndex;
  hadesditalsargs(this.hadesName, this.hadesIndex);
}
