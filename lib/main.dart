import 'package:flutter/material.dart';
import 'dart:async';
import 'data.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/scheduler.dart';

class SecondPage extends StatelessWidget {

  final RecordItem recorditem;
  SecondPage({this.recorditem});

  @override build(BuildContext context){
    return Material(child:Column(
      
      children: <Widget>[
      Expanded(child:Stack(children: <Widget>[
        Container(alignment: Alignment.center, child:Image(image:NetworkImage(recorditem.imageurl))),
        Positioned(left:0, top:50, child:BackButton(color:Colors.black)),
      ])),
      Expanded(child:ListView(children: 
        List.generate(recorditem.songs.length, (int index) => ListTile(
          title:Text(recorditem.songs[index]),
          trailing: IconButton(onPressed:(){}, icon:Icon(Icons.play_arrow, color:Theme.of(context).accentColor)),
          ))
      ,))
    ],));
  }
}



class Record extends StatefulWidget {
  final RecordItem recorditem;

  Record({this.recorditem});

  @override
  _RecordState createState() => _RecordState();
}

class _RecordState extends State<Record> with SingleTickerProviderStateMixin {
  final AudioPlayer player = AudioPlayer();
  int angle = 0; 
  Ticker t;
  bool started = false;


@override initState(){
  super.initState();
  t = Ticker((_) {
    print("tick");
    setState(() { angle = (angle + 5) % 360; });
  });
}

  Future playSong(bool started) async {
    if (started) {
      print("start playback");
      t.start();
      await player.play(widget.recorditem.url);
    } else {
       print("stop playback");
      t.stop(); 
      await player.stop();
    }
  }

  @override build(BuildContext context){
    return  Container(
        width:100, 
        height:100, 
        child: Center(
          child:Transform(transform:Matrix4.rotationZ((angle / 180) * 3.14), 
          alignment: Alignment.center,
            child:GestureDetector(
      onTap: (){
         print("tap");
         started = !started;
        playSong(started);
      },
      // onLongPress: (){
      //   print("navigating");
      //   Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext ctx) => SecondPage(recorditem:widget.recorditem)));
      // },
      
     child:Image(image:AssetImage('assets/images/record.png'))
          )
        )
    ));
  }
}

class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hello world"),),
      body: GridView.count(crossAxisCount: 3,  children:
        List.generate(Records.items.length, (int index) => Record(recorditem: Records.items[index]))
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        print("hey dont press me!");
      }, child: Icon(Icons.access_alarm),),
    );
  }
}

main(){
  runApp(MaterialApp(
    home:HomePage()
  ));
}