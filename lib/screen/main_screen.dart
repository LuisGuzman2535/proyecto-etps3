import 'package:app_ui/components/job_carousel.dart';
import 'package:app_ui/components/job_list.dart';
import 'package:app_ui/models/company.dart';
import 'package:app_ui/models/job.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:flutter_svg/flutter_svg.dart";
import 'package:flutter_svg/avd.dart';
import 'package:app_ui/models/job.dart';
import 'package:app_ui/models/company.dart';
import 'package:app_ui/components/job_list.dart';
import 'package:app_ui/screen/menu_lateral.dart';


  class MainScreen extends StatelessWidget{



      List <Job> forYouJobs = [
        Job(
        role: "Play Station 5",
        location: "Sony",
        company: Company(
          name: "Sony Entertainment System",
            urlLogo: "https://i.pinimg.com/originals/e5/dd/2c/e5dd2cd468d1c783137a68606b450e4c.jpg",
        ),
      ),

        Job(
          role: "Xox Series X",
          location: "Microsoft",
          company: Company(
            name: "Xbox Games Studios",
            urlLogo: "https://www.somosxbox.com/wp-content/uploads/2020/05/XboxLobo.jpg",
          ),

        ),

        Job(
          role: "Nintendo Switch",
          location: "Nintendo Entertainment System",
          company: Company(
            name: "",
            urlLogo: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Nintendo_Logo_2017.png/640px-Nintendo_Logo_2017.png",
          ),
        ),

      ];

//-------------------------------------------------------------------------------------------------

      List <Job> recentJobs = [
        Job(
          role: "Mafia",
          location: "ROCKSTAR",
          company: Company(
            name: "GTA",
            urlLogo: "https://compass-ssl.xbox.com/assets/a0/4f/a04f2744-74d9-4668-8263-e0261fbea869.jpg?n=GTA-V_GLP-Page-Hero-1084_1920x1080.jpg",
          ),
          isFavorite: true,
        ),

        Job(
          role: "Fantasia",
          location: "CD Projekt RED",
          company: Company(
            name: "The Witcher 3",
            urlLogo: "https://www.muycomputer.com/wp-content/uploads/2015/06/p1nc8cyylj1evjxiy4oa.jpg",
          ),
          isFavorite: true,
        ),

        Job(
          role: "Aventura",
          location: "NINTENDO",
          company: Company(
            name: "Zelda BOTW",
            urlLogo: "https://tierragamer.com/wp-content/uploads/2019/06/Zelda-Breath-Wild-2-Portada-768x432.jpg",
          ),
          isFavorite: true,
        ),

        Job(
          role: "Venganza",
          location: "Naughty Dog",
          company: Company(
            name: "the last of us II",
            urlLogo: "https://www.aiedi.org/wp-content/uploads/2020/06/The-Last-of-us-2.jpg",
          ),
          isFavorite: true,
        ),

      ];




    Widget build(BuildContext context){
      return Scaffold(
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              _customAppBar(context),
              textsHeader(context),
              _forYou(context),
              _recent(context),
              SizedBox(height: 50.0),
            ],
          ),
        ),
      );
    }

      Widget _customAppBar(context){
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget> [
            IconButton(
              iconSize: 40.0,
              icon: SvgPicture.asset('assets/icons/slider.svg'),
              onPressed: (){
                Navigator.push(context,
                  MaterialPageRoute (builder:(context) => MenuLateral()),
                );
              },
            ),
          Row(
            children: <Widget> [
            IconButton(
              iconSize: 40.0,
              icon: SvgPicture.asset('assets/icons/search.svg'),
              onPressed: (){},
            ),

            IconButton(
              iconSize: 40.0,
              icon: SvgPicture.asset('assets/icons/settings.svg'),
              onPressed: (){},
            ),
            ],
          ),
          ],
        ),
      );
      }

      Widget textsHeader(context){
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children:  <Widget> [
              Text(
                "Mundo Gamer",
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                "Top Juegos",
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                "Explora los juegos mas cotizados",
                style: Theme.of(context).textTheme.headline1,
              ),
            ],
          ),
        );
      }

      Widget _forYou(context){
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                "Para ti.",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                "Creado por Armando.",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                "Te presentamos los juegos mas vendidos y mejor valorados por la comunidad.",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
           JobCarousel(this.forYouJobs),
          ],
      );
      }

      Widget _recent(context){
      return Column(
        children: <Widget> [
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 5.0, bottom: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
            children:  <Widget> [
              Text(
              "Juegos Destacados",
              style: Theme.of(context).textTheme.bodyText1,
            ),
              Text(
                "Biblioteca",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: JobList(this.recentJobs),
          ),

        ],
      );
      }

  }

