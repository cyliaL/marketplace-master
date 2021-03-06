import 'package:flutter/material.dart';
import 'package:marketplace_example/Screens/login/login.dart';
import 'package:marketplace_example/Screens/components/background.dart';
import 'package:marketplace_example/Screens/login/recuperate_code.dart';

class Confirm_New_Password extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Container(
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/icon_password.png'),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.rectangle,
              ),
            ),

            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "RĂ©initialiser mot de passe",
                style: TextStyle(
                    color: Color(0xFFFF725E),
                    fontWeight: FontWeight.bold,
                    fontSize: 22
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "Veuillez saisir votre nouveau mot de passe",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Color(0xFF4E4949),
                    fontSize: 16
                ),
                textAlign: TextAlign.center,
              ),
            ),

            SizedBox(height: size.height * 0.06),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Nouveau mot de passe"
                ),
              ),
            ),


            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Confirmez nouveau mot de passe"
                ),
              ),
            ),

            SizedBox(height: size.height * 0.08),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                },
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
                    "RĂ©initialiser",
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