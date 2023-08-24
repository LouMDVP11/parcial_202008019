import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  // sobreescribir la función 
  @override
  Widget build(BuildContext context) {
    // const es que sea constante, si no queremos que lo sea, solo lo removemos
    //return const MaterialApp(
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //scaffold = estructura 
      home: Scaffold(
        backgroundColor: Color(0xFF41818A),
        body: Center(
          //Theme permite que varíe el tipo de texto en base al tema
          child: Column(
            //cómo alinear los elementos en el eje principal
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.book, color: Colors.white, size: 55,),
                  Text(
                    'GUCUMATZ', 
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontFamily: 'Roboto',
                      // Otras propiedades de estilo que desees mantener
                    ),
                  ),
                ],
              ),
              Navbar_(),
              Carrousel(),
              Container(
                height: 80,
                color: Colors
                    .teal[600], 
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
                      [
                        Text(
                          'INSERTE PUBLICIDAD NO\n TAN INTRUSIVA',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Roboto',
                            // Otras propiedades de estilo que desees mantener
                          ),
                        ),
                        Text(
                          '\t\t\t',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Roboto',
                            // Otras propiedades de estilo que desees mantener
                          ),
                        ),
                        Icon(Icons.android, color: Colors.white, size: 50,),
                      ],
                    ),// Puedes cambiar el color a tu preferencia
                    
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class Carrousel extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 303,
          height: 500, 
          child: ListView(
            padding: const EdgeInsets.symmetric(vertical: 2),
            scrollDirection: Axis.vertical,
            children: [
              Chat_(nombre: "PROF. JOHANNA MASON", message_: "Tú: ¡Hola, profe!"),
              SizedBox(height: 12),
              NewChat_(nombre: "PROF. JUANA ROSAL", message_: "Juana: Tengo disponible a las..."),
              SizedBox(height: 12),
              Chat_(nombre: "JOSÉ FLORES", message_: "Tú: Buena tarde. Disculpe, una..."),
              SizedBox(height: 12),
              NewChat_(nombre: "PROF. DENISE SÁNCHEZ", message_: "Denise: ¡Muchas gracias!"),
              SizedBox(height: 12),
              Chat_(nombre: "PROF. NIKTE SÁNCHEZ", message_: "Nikte: ¡Muchas gracias!"),
              SizedBox(height: 12),
              Chat_(nombre: "PROF. LOURDES DEL VALLE", message_: "Lourdes: ¡Muchas gracias!"),
              SizedBox(height: 12),
              NewChat_(nombre: "PROF. DAVID BATZ", message_: "David: ¡Muchas gracias!"),
            ],
          ),
        ),
      ],
    );
  }
}
class Navbar_ extends StatelessWidget  {
    @override
    Widget build(BuildContext context) {
    return Container(
      height: 40, 
      width: 344, 
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(18), color: Color(0xFF8CBC70)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 86,
            child: Column(
              children: [
                IconButton(
                  onPressed: (){
                      //action coe when button is pressed
                  }, 
                  icon: Icon(Icons.settings_sharp),
                  color: Colors.white,
                ),
              ],
            )
          ),
          Container(
            width: 86,
            decoration: const ShapeDecoration(                       
                shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 0.2,
                  strokeAlign: BorderSide.strokeAlignOutside,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
            child: Column(
              children: [
                IconButton(
                  onPressed: (){
                      //action coe when button is pressed
                  }, 
                  icon: Icon(Icons.search),
                  color: Colors.white,
                ),
              ],
            )
          ),
          Container(
            width: 86,
            decoration: const ShapeDecoration(                       
                shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 0.2,
                  strokeAlign: BorderSide.strokeAlignOutside,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
            child: Column(
              children: [
                IconButton(
                  onPressed: (){
                      //action coe when button is pressed
                  }, 
                  icon: Icon(Icons.recommend),
                  color: Colors.white,
                ),
              ],
            )
          ),
          Container(
            width: 86,
            decoration: const ShapeDecoration(                       
                shape: RoundedRectangleBorder(
              ),
            ),
            child: Column(
              children: [
                IconButton(
                  onPressed: (){
                      //action coe when button is pressed
                  }, 
                  icon: Icon(Icons.arrow_back),
                  color: Colors.white,
                ),
              ],
            )
          ),

        ],
      ),
    );
    }
  }

class Chat_ extends StatelessWidget  {
    final nombre, message_;
    const Chat_({
      required this.nombre,
      required this.message_,
      super.key,
    });
    @override
    Widget build(BuildContext context) {
      return Container(
        width: 303,
        height: 81,
        decoration: ShapeDecoration(
          color: Color(0xFFDDE3E8),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Padding(
                  padding: EdgeInsets.all(8),  // Ajusta el valor de relleno según tus preferencias
                  child: Container(
                    width: 60,
                    height: 61,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://via.placeholder.com/60x61"),
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.circle,  // Usar un círculo como forma
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 197,
                      height: 17.61,
                      child: Text(
                        '\t\t\t\t$nombre\n\n\n',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 197,
                      height: 17.61,
                      child: Text(
                        '\t\t\t\t\t$message_\n\n\n',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
    }
}
class NewChat_ extends StatelessWidget  {
    final nombre, message_;
    const NewChat_({
      required this.nombre,
      required this.message_,
      super.key,
    });
    @override
    Widget build(BuildContext context) {
      return Container(
        width: 303,
        height: 81,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Padding(
                  padding: EdgeInsets.all(8),  // Ajusta el valor de relleno según tus preferencias
                  child: Container(
                    width: 60,
                    height: 61,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://via.placeholder.com/60x61"),
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.circle,  // Usar un círculo como forma
                    ),
                  ),
                ),
              ],
            ),
            
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 197,
                      height: 17.61,
                      child: Text(
                        '\t\t\t\t$nombre\n\n\n',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Icon(Icons.notifications_active, color: Colors.red,)
                  ],
                ),
                
                Row(
                  children: [
                    SizedBox(
                      width: 197,
                      height: 17.61,
                      child: Text(
                        '\t\t\t\t\t$message_\n\n\n',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
              
            ),
          ],
        ),
      );
    }
}