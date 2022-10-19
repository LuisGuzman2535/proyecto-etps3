import 'package:flutter/material.dart';

  class SplashScreen extends StatelessWidget{
    Widget build(BuildContext context){
      return Scaffold(
        body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset('assets/imgs/img_main.png'),
        Text(
          "Job hunting",
          style: Theme.of(context).textTheme.headline1,
        ),
        Text(
          "made easy",
          style: Theme.of(context).textTheme.headline2,
        ),
            MaterialButton(
              elevation: 10.0,
              minWidth: 170.0,
              height: 50.0,
              color: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Text(
                "Get Started",
                style: Theme.of(context).textTheme.headline1,
              ),
              onPressed: (){},
            ),
        ],
        )
        ),
      );
    }
  }