import 'package:flutter/material.dart';
import 'package:preferenciasusuarioapp/src/pages/home_page.dart';
import 'package:preferenciasusuarioapp/src/pages/settings_page.dart';
import 'package:preferenciasusuarioapp/src/share_prefs/preferencias_usuario.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  //Mandamos a llamar desde aqui para que se guarden los datos
  final prefs = new PrefereciasUsuario();
  await prefs.initPrefs();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final prefs = new PrefereciasUsuario();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Preferencias',

      //Evaluar en las prefencias 
      initialRoute: prefs.ultimaPagina,
      routes: {
        HomePage.routeName: (BuildContext context) => HomePage(),
        SettingsPage.routeName: (BuildContext context) => SettingsPage(),
      },
    );
  }
}
