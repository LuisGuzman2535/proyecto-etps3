import 'package:app_ui/models/job.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemJob extends StatefulWidget{
  Job job;
  bool themeDark;

  ItemJob(this.job,{this.themeDark=false});

  @override
  _ItemJobState createState() => _ItemJobState();
}

class _ItemJobState extends State<ItemJob> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0, bottom: 20.0, top: 20.0),
      child: Container(
        decoration: _boxDecoration(context),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:<Widget> [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget> [
                  _companyLogo(),
                  _favIcon(),
                ],
              ),
              _infoJobTexts(context),
            ],
          ),
        ),
      ),
    );
  }

BoxDecoration _boxDecoration(context){
  return BoxDecoration(
    color: this.widget.themeDark ? Theme.of(context).primaryColor: Colors.black,
    borderRadius: BorderRadius.circular(10.0),
    boxShadow: <BoxShadow>[
    BoxShadow(
      color: Colors.black45,
      offset: Offset(4.0,4.0),
      blurRadius: 18.0,
    ),
    ],
  );
}

Widget _companyLogo(){
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image.network(
         this.widget.job.company.urlLogo,
            width: 150.0,
        ),
    ),
    );
 }

Widget _favIcon(){
    return GestureDetector(
      child: Icon(
     this.widget.job.isFavorite ? Icons.favorite :  Icons.favorite_border,
      color: this.widget.themeDark ? Colors.white:Colors.grey,
    ),
        onTap: (){
        setState((){
            this.widget.job.isFavorite = ! this.widget.job.isFavorite;
        });
        },
    );
}

Widget _infoJobTexts (context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:<Widget> [
        Text(
         this.widget.job.company.name,
         style: TextStyle(
           fontSize: 20.0,
           color: this.widget.themeDark ? Color(0XFFB7B7D2) : Colors.grey,
         ),
        ),
        Text(
          this.widget.job.role,
          style: TextStyle(
            fontSize: 15.0,
            color: this.widget.themeDark ? Color(0XFFB7B7D2) : Colors.grey,
          ),
        ),
        SizedBox(height: 3.0),
        Row(
            children: <Widget> [
                Icon(
                  Icons.gamepad,
                        color: Theme.of(context).highlightColor,
                        size: 15.0,
            ),
                        SizedBox(width: 10.0),
                Text(
                  this.widget.job.location,
                    style: TextStyle(
                      fontSize: 13.0,
                      color: this.widget.themeDark ? Color(0XFFB7B7D2) : Colors.grey,
                    ),
                ),
            ],
        ),
      ],
    );
}

}