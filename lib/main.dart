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
import 'Prueba.dart';

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
  bool _flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
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
                  scale: 0.6,
                  fit: BoxFit.cover,
                ),
                color: MyColors.white,
                onPressed: () {}),

            IconImageButton(
                width: 80,
                height: 80,
                image: Image.asset(
                  'assets/images/vegan-food.png',
                  fit: BoxFit.fitWidth,
                ),
                color: MyColors.white,
                onPressed: () {}),

            //BottonModal(),
            Container(
              margin: EdgeInsets.all(10.0),
              child: SizedBox(
                width: 90,
                height: 90,
                child: FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: MyColors.white,
                  mini: false,
                  child: Image.asset(
                    'assets/images/ramen.png',
                    height: 60,
                    width: 60,
                  ),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.all(10.0),
              child: SizedBox(
                width: 90,
                height: 90,
                child: FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: MyColors.white,
                  mini: false,
                  child: Image.asset(
                    'assets/images/beef.png',
                    height: 60,
                    width: 60,
                  ),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.all(10.0),
              child: SizedBox(
                width: 90,
                height: 90,
                child: FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: MyColors.white,
                  mini: false,
                  child: Image.asset(
                    'assets/images/beef.png',
                    height: 60,
                    width: 60,
                  ),
                ),
              ),
            ),

            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.all(15),
                  child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15)),
                      child: Image.asset('assets/images/food.jpg')),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(17.0),
                        child: Icon(
                          Icons.directions_bike,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 40,
                  right: 110,
                  child: Text(
                    "POLLO FRITO",
                    style: TextStyle(color: MyColors.white, fontSize: 30),
                  ),
                ),
              ],
            ),
            Container(
              width: 350,
              margin: EdgeInsets.symmetric(vertical: 30),
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              decoration: BoxDecoration(
                  color: MyColors.orangeFilter,
                  borderRadius: BorderRadius.circular(29.5)),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Buscar",
                    hintStyle: TextStyle(color: MyColors.white),
                    suffixIcon: Icon(
                      Icons.search,
                      color: MyColors.white,
                    )),
              ),
            ),

            ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  overlayColor: getColor(Colors.white, Colors.teal),
                ),
                child: Text('Cambia de color')),

            ElevatedButton(
              onPressed: () => setState(() => _flag = !_flag),
              child: Text(
                "Cambiar Color",
                style: TextStyle(
                    color: _flag ? Colors.white : MyColors.orangeBorder),
              ),
              style: ElevatedButton.styleFrom(
                primary: _flag ? MyColors.orangeBorder : Colors.white, //
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                          child: ImageButton(
                              image:
                                  AssetImage('assets/images/credit-card.png')),
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: MyColors.orangeFilter),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: MyColors.orangeFilter),
                      ),
                      hintText: "Numero de la tarjeta",
                    ),
                  )
                ],
              )),
            ),

            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Prueba()));
                },
                style: ButtonStyle(),
                child: Text('2da pagina')),
          ],
        )));
  }
}

MaterialStateProperty<Color> getColor(Color color, Color colorPressed) {
  final getColor = (Set<MaterialState> states) {
    if (states.contains(MaterialState.pressed)) {
      return colorPressed;
    } else {
      return color;
    }
  };

  return MaterialStateProperty.resolveWith(getColor);
}
