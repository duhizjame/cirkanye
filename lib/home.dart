import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ui/colors.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.background.color,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(5),
                width: 120,
                child: FlatButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/b');
                  },
                  child: Text(
                    'play',
                    style: TextStyle(
                        fontSize: 20,
                      color: AppColors.text.color
                    ),
                  ),
                  color: AppColors.primary.color,
                  splashColor: AppColors.secondary.color,
                  padding: EdgeInsets.all(12),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5),
                width: 120,
                child: FlatButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/a');
                  },
                  child: Text(
                    'about',
                    style: TextStyle(
                        fontSize: 20,
                        color: AppColors.text.color
                    )
                  ),
                  color: AppColors.primary.color,
                  splashColor: AppColors.secondary.color,
                  padding: EdgeInsets.all(12),
                ),
              )
            ],
          ),
        )
    );
  }
}