import 'package:shared_preferences/shared_preferences.dart';

class PrefereciasUsuario {
  static final PrefereciasUsuario _instancia =
      new PrefereciasUsuario._internal();

  factory PrefereciasUsuario() {
    return _instancia;
  }

  PrefereciasUsuario._internal();

  SharedPreferences _prefs;

  initPrefs() async {
    this._prefs = await SharedPreferences.getInstance();
  }

  //Ninguna de estas propiedad se usan
  /*bool _colorSecundario;
  int _genero;
  String _nombre;*/

  //get y set de genero
  get genero {
    return _prefs.getInt('genero') ?? 1; //?? -- CONDICION QUE SI NO EXISTE
  }

  set genero(int value) {
    _prefs.setInt('genero', value);
  }

  //get y set de color
  get colorSecundario {
    return _prefs.getBool('colorSecundario') ?? false;
  }

  set colorSecundario(bool value) {
    _prefs.setBool('colorSecundario', value);
  }

  //get y set de nombreUsuario
  get nombreUsuario {
    return _prefs.getString('nombreUsuario') ?? '';
  }

  set nombreUsuario(String value) {
    _prefs.setString('nombreUsuario', value);
  }

}
