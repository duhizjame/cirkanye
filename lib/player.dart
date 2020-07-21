

import 'package:flutter/material.dart';
import 'ui/colors.dart';
import 'package:flutter/cupertino.dart';
import 'services.dart';

class Players extends StatefulWidget {
  @override
  _PlayersState createState() => _PlayersState();
}

Widget player(name) {
  return Card(
    child: ListTile(
      leading: Icon(CupertinoIcons.heart_solid),
      title: Text(name, style: TextStyle(color: AppColors.primary.color)),
      trailing: Icon(CupertinoIcons.add_circled),
    ),
  );
}




class _PlayersState extends State<Players> {
  Map<String,int> players = {};
  TextEditingController _textFieldController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    var keys = <String>[];
    players.keys.forEach((element) => keys.add(element));
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Add your players'),
        backgroundColor: AppColors.secondary.color,
      ),
      backgroundColor: AppColors.background.color,
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 50,
              ),
              Expanded(child: ListView.builder(
                  itemCount: players.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        leading: Icon(CupertinoIcons.heart_solid),
                        title: Text(keys[index]),
                        trailing: IconButton(
                            onPressed: (){
                              setState(() {
                                players.remove(keys[index]);
                              });
                            },
                            icon: Icon(CupertinoIcons.clear_circled),
                            highlightColor: Colors.red),
                      ),
                    );
                  },
                )
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: RaisedButton.icon(
                    onPressed: () {
                      return showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                title: Text(
                                    "Enter player name:",
                                    style: TextStyle(
                                        color: AppColors.text2.color, fontSize: 15)),
                                content: TextField(
                                  textAlignVertical: TextAlignVertical.bottom,
                                  textAlign: TextAlign.center,
                                  autofocus: true,
                                  style: TextStyle(
                                      color: AppColors.text2.color, fontSize: 15),
                                  controller: _textFieldController,
                                ),
                                actions: <Widget>[
                                  FlatButton(
                                    child: new Text('OK'),
                                    onPressed: () {
                                      var name = _textFieldController.text;
                                      setState(() {
                                        players[name]=0;
                                      });
                                      _textFieldController.clear();
                                      Navigator.of(context).pop();
                                    },
                                  )
                                ],
                              ));
//                          (){
//                        setState(() {
//                          players.add('nov1');
//                        });
                    },
                    icon: Text('add player'),
                    label: Icon(CupertinoIcons.add_circled)),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: RaisedButton.icon(
                    onPressed: () {},
                    icon: Text('play'),
                    label: Icon(CupertinoIcons.play_arrow_solid)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
