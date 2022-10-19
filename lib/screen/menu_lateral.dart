import 'package:flutter/material.dart';

class MenuLateral extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: Text("Descubre"),
            accountEmail: Text("Mas Juegos"),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage("https://gamersrd.com/wp-content/uploads/2017/02/La-historia-de-los-videojuegos-a-trav%C3%A9s-de-sus-controles-GamersRD.jpg.webp"),
                    fit: BoxFit.cover
                )
            ),
          ),
          Ink(
            color: Colors.black26,
            child: new ListTile(
              title: Text("Accion", style: TextStyle(color: Colors.greenAccent),),
              onTap: (){},
            ),
          ),
          new ListTile(
            title: Text("Arcade", style: TextStyle(color: Colors.greenAccent)),
            onTap: (){},
          ),
          new ListTile(
            title: Text("Deportivos", style: TextStyle(color: Colors.greenAccent)),
          ),
          new ListTile(
            title: Text("Terror", style: TextStyle(color: Colors.greenAccent)),
          )

        ],
      ) ,
    );
  }
}