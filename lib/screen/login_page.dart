import 'package:app_ui/screen/main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  static String id= 'login_page';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passwordvisible = true;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context){
    return SafeArea(
      key: _formKey,
      child: Scaffold(
      body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                    child: Text(
                      "Descubre Los Juegos mas Populares",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                      ),
                    )
                ),

                Flexible(
                    child: Text(
                      "De Todas Las Plataformas",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                      ),
                    )
                ),

                 Flexible(
                child:
                Image.asset('assets/imgs/loogo.png', height: 450.0
                ),
                ),
                SizedBox(height: 15.0),
                _userTextField(),
                SizedBox(height: 15.0),
                _passwordTextField(),
                SizedBox(height: 20.0),
                _bottonLogin(),
              ],
            ),
          ),
        ),
      );
   
  }

  Widget _userTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot){
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                icon: Icon(Icons.email),
                hintText: "ejemplo@correo.com",
                labelText: "Correo Electronico",
              ),
              onChanged: (value){
              },
            ),
          );
        }
    );
  }

 Widget _passwordTextField(){
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot){
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: TextField(
                keyboardType: TextInputType.emailAddress,
                obscureText: true,
                decoration: InputDecoration(
                  icon: Icon(Icons.lock),
                  hintText: "Contraseña",
                  labelText: "Contraseña",
                suffixIcon: IconButton(
                  icon: Icon(
                    passwordvisible
                    ? Icons.visibility
                        : Icons.visibility_off,
                    color: Theme.of(context).primaryColorDark,
                  ),
                  onPressed: (){
                    setState(() {
                      passwordvisible = !passwordvisible;
                    });
                  },
                ),
                ),
              onChanged: (value){
              },
            ),
          );
        }
    );
  }

  Widget _bottonLogin(){
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot){
          return RaisedButton(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
              child: Text("Ingresar",
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 10.0,
            color: Colors.grey,

            onPressed:(){
              Navigator.push(context,
                  MaterialPageRoute (builder:(context) => MainScreen()),
              );
            } ,
          );
      }
    );
  }




}