import 'package:app_ui/models/job.dart';
import 'package:flutter/material.dart';

class CompactItemJob extends StatelessWidget{
  Job job;
  CompactItemJob(this.job);

  @override
  Widget build (BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 7.0),
      child: Container(
        decoration: _boxDecoration(),
        height: 100.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children:<Widget> [
                _companyLogo(),
                _infoJobText(context),
              ],
            ),
            _favIcon(context),
          ],
        ),
      ),
    );
  }
  BoxDecoration _boxDecoration(){
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10.0),
      boxShadow: <BoxShadow>[
        BoxShadow(
          color: Colors.black26,
          offset: Offset(2.0, 2.0),
          blurRadius: 8.0,
        )
      ],
    );
  }

  Widget _companyLogo(){
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Image.network(this.job.company.urlLogo),
    );
  }

  Widget _infoJobText(context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children:<Widget> [
        Text(
          this.job.company.name,
          style:  Theme.of(context).textTheme.bodyText1,
        ),
        Text(
          this.job.role,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        SizedBox(height: 3.0),
        Row(
          children:<Widget> [
            Icon(
              Icons.videogame_asset,
              color: Theme.of(context).highlightColor,
              size: 14.0,
            ),
            SizedBox(width: 3.0),
            Text(
              this.job.location,
              style: TextStyle(
                fontSize: 14.0,
                color: Color(0XFFB7B7D2),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _favIcon(context){
    return Padding(
      padding: EdgeInsets.only(top: 20.0, right: 20.0),
      child: Icon( Icons.favorite_border,
        color: Theme.of(context).highlightColor,
      ),

    );
  }


}