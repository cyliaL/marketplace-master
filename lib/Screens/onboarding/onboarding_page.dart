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
              body: ' Gagnez du temps, vendez et achetez des articles depuis chez vous ',
              image: buildImage('assets/pic1.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: "Consulter les articles",
              body: "C'est possible de consulter le prix, la couleur et la taille de l'article",
              image: buildImage('assets/pic2.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Paiement en ligne',
              body: 'Utilisez la carte EDAHABIA, la carte de crédit',
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
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 20),
        descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: EdgeInsets.all(24),
        pageColor: Colors.white,
      );
}
