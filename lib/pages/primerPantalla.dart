import 'package:flutter/material.dart';
import 'package:flutter_vsc/widgets/brand_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_vsc/my_colors.dart';
import 'package:flutter_vsc/widgets/acept_terms.dart';

class PrimerPantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 80.0),
              child: Image.asset(
                'assets/images/logotipo.png',
                width: 320,
              ),
            ),
            BrandButton(
              color: MyColors.orangeBorder,
              icon: Icon(FontAwesomeIcons.facebookF),
              text: Text(
                "CONTINUÁ CON FACEBOOK",
                style: TextStyle(
                    fontFamily: "QUICKSAND-BOLD",
                    color: MyColors.brownText,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () => print("Inicia con Facebook"),
            ),
            const SizedBox(height: 8),
            BrandButton(
              color: MyColors.orangeBorder,
              icon: Icon(FontAwesomeIcons.whatsapp),
              text: Text(
                "CONTINUÁ CON WHATSAPP",
                style: TextStyle(
                    fontFamily: "QUICKSAND-BOLD",
                    color: MyColors.brownText,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () => print("Inicia con Facebook"),
            ),
            const SizedBox(height: 8),
            BrandButton(
              color: MyColors.orangeBorder,
              icon: Icon(FontAwesomeIcons.google),
              text: Text(
                "CONTINUÁ CON GOOGLE",
                style: TextStyle(
                    fontFamily: "QUICKSAND-BOLD",
                    color: MyColors.brownText,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () => print("Inicia con Facebook"),
            ),
            const SizedBox(height: 20),
            AceptTerms(text: Text("Acepto los terminos y condiciones")),
            const SizedBox(height: 80),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.grey,
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {},
              child: const Text('OMITIR'),
            ),
          ],
        ),
      ),
    );
  }
}

/* class BannerWidgetArea extends StatefulWidget {
  @override
  Widget build(BuildContext context) {

    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    PageController controlloer = PageController(InitialPage:1) */

/* return Container(
      height: screenHeight,
      width: screenWidth,
      child: PageView(
        controller: ,
        scrollDirection: Axis.horizontal,
        children: <Widget>[],
      ),
    ); 
  };
}*/
