import 'package:flutter/material.dart';
import 'package:flutter_vsc/my_colors.dart';
import 'package:flutter_vsc/widgets/brand_button.dart';
import 'package:flutter_vsc/widgets/direction_input.dart';
import 'package:flutter_vsc/widgets/generic_button.dart';
import 'package:flutter_vsc/widgets/image_button.dart';
import 'package:flutter_vsc/widgets/price_slider.dart';
import 'package:flutter_vsc/widgets/circular_button.dart';
import 'package:flutter_vsc/widgets/icon_image_button.dart';
/* import 'package:flutter_vsc/widgets/button_modal.dart'; */
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(
    MiApp()); // estructura de la funcion main, ejecuta el primer widget de la aplicacion.

class MiApp extends StatefulWidget {
  const MiApp({Key? key}) : super(key: key);

  @override
  _MiAppState createState() => _MiAppState();
}

class _MiAppState extends State<MiApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi App",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Mi Asadfp"),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            BrandButton(
              color: MyColors.orangeBorder,
              icon: Icon(FontAwesomeIcons.facebook),
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
            DirectionInput(
                icon: Icon(Icons.search),
                labelText: "63 N1528",
                onPressed: () => print("Hola")),
            GenericButton(
              color: MyColors.white,
              text: Text(
                "MERIENDA",
                style: TextStyle(
                  fontFamily: "QUICKSAND-LIGHT",
                  color: MyColors.brownLittleText,
                  fontSize: 16,
                ),
              ),
              onPressed: () => print("Inicia con Facebook"),
            ),

            GenericButton(
              color: MyColors.white,
              text: Text(
                "DESAYUNO",
                style: TextStyle(
                  fontFamily: "QUICKSAND-LIGHT",
                  color: MyColors.brownLittleText,
                  fontSize: 16,
                ),
              ),
              onPressed: () => print("Inicia con Facebook"),
            ),

            CircularButton(
                width: 60,
                height: 60,
                color: MyColors.white,
                icon: Icon(
                  Icons.search,
                  color: MyColors.brownText,
                  size: 35,
                ),
                onPressed: () {}),
            CircularButton(
                width: 60,
                height: 60,
                color: MyColors.orangeFilter,
                icon: Icon(
                  Icons.search,
                  color: MyColors.white,
                  size: 35,
                ),
                onPressed: () {}),

            CircularButton(
                width: 60,
                height: 60,
                color: MyColors.orangeFilter,
                icon: Icon(
                  Icons.search,
                  color: MyColors.white,
                  size: 35,
                ),
                onPressed: () {}),
            PriceSlider(),
            ImageButton(image: AssetImage('assets/images/beef.png')),
            ImageButton(image: AssetImage('assets/images/vegetable.png')),
            IconImageButton(
                width: 70,
                height: 70,
                image: Image.asset(
                  'assets/images/ramen.png',
                  height: 10,
                  fit: BoxFit.cover,
                ),
                color: MyColors.white,
                onPressed: () {}),

            IconImageButton(
                width: 80,
                height: 80,
                image: Image.asset(
                  'assets/images/vegan-food.png',
                  fit: BoxFit.cover,
                ),
                color: MyColors.white,
                onPressed: () {}),
            //BottonModal(),
          ],
        )));
  }
}
