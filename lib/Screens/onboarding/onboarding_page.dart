import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:marketplace_example/Screens/login/login.dart';
import 'package:marketplace_example/widget/button_widget.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'Vendre et acheter en ligne',
              body: ' Gagnez du temps, vendez et achetez depuis chez vous ',
              image: buildImage('assets/pic1.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: "Consulter les articles",
              body: "C'est possible de consulter le prix, la couleur, la taille...",
              image: buildImage('assets/pic2.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Paiement en ligne',
              body: "C'est possible de payer en ligne avec la carte EDAHABIA",
              image: buildImage('assets/pic3.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Livraison à domicile',
              body: 'Une livraison à domicile est possible',
              footer: ButtonWidget(
                text: 'Lancer le shopping',
                onClicked: () => goToLogin(context),
              ),
              image: buildImage('assets/pic4.png'),
              decoration: getPageDecoration(),
            ),
          ],
          done: Text('lancer', style: TextStyle(fontWeight: FontWeight.w600)),
          onDone: () => goToLogin(context),
          showSkipButton: true,
          skip: Text('Passer'),
          onSkip: () => goToLogin(context),
          next: Icon(Icons.arrow_forward),
          dotsDecorator: getDotDecoration(),
          onChange: (index) => print('Page $index selected'),
          globalBackgroundColor: Theme.of(context).primaryColor,
          skipFlex: 0,
          nextFlex: 0,
          // isProgressTap: false,
          // isProgress: false,
          // showNextButton: false,
          // freeze: true,
          // animationDuration: 1000,
        ),
      );

  void goToLogin(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => LoginScreen()),
      );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: Color(0xFFBDBDBD),
        activeColor:  Color(0xFFFF725E),
        size: Size(10, 10),
        activeSize: Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xFF4E4949)),
        bodyTextStyle: TextStyle(fontSize: 16, color: Color(0xFF4E4949)),
        //descriptionPadding: EdgeInsets.all(30).copyWith(bottom: 0),
        titlePadding: EdgeInsets.symmetric(vertical: 30),
        imagePadding: EdgeInsets.all(30),
        pageColor: Colors.white,
      );
}
