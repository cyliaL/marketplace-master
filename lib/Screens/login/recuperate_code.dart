import 'package:flutter/material.dart';
import 'package:marketplace_example/Screens/login/login.dart';
import 'package:marketplace_example/components/background.dart';

class Recuperate_Code extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Container(
              height: 130.0,
              width: 110.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/Reset_password_pana.png'),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.rectangle,
              ),
            ),


            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 80, vertical: 10),
              child: Text(
                "Réinitialiser le mot de passe",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF454242),
                    fontSize: 20
                ),
                textAlign: TextAlign.center,
              ),
            ),



            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 80),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Saisissez le code"
                ),
              ),
            ),

            SizedBox(height: size.height * 0.03),


            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
              child: RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                textColor: Colors.white,
                padding: const EdgeInsets.all(0),
                child: Container(
                  alignment: Alignment.center,
                  height: 50.0,
                  width: size.width * 0.5,
                  decoration: new BoxDecoration(
                      borderRadius: BorderRadius.circular(80.0),
                      gradient: new LinearGradient(
                          colors: [
                            Color.fromARGB(255, 197, 63, 63),
                            Color.fromARGB(255, 255, 114, 94)
                          ]
                      )
                  ),
                  padding: const EdgeInsets.all(0),
                  child: Text(
                    "Réinitialiser",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}