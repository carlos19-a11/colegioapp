import 'package:flutter/material.dart';
import 'package:flutter_application_1/Dropdown.dart';
import 'package:flutter_application_1/Home.dart';

class pantallaInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for the major Material Components.
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        child: Stack(children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/fondo.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Center(
                  child: Text(
                    "!ESTAS LISTO¡",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      height: 5,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Center(
                child: Text(
                  "listo para llevar la escuela a tu bolsillo ",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    height: 16,
                  ),
                ),
              ),
              Text(
                "Escoge Tu Colegio",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
              // busqueda de colejo
            Column(
              children: <Widget>[
                DropDown(),
              ],
            ),        
             
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ButtonTheme(
                      minWidth: 200,
                      height: 50,
                      child: RaisedButton(
                        color: Colors.lightBlueAccent,
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100)),
                        onPressed: (){
                          Navigator.push(
                            context, MaterialPageRoute(
                              builder: (context) => Home()),);
                      },
                      child: Text("Continuar"),
                      ),
                    ),
                      
                  ],
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
