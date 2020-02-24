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
  bool _colorSecundario;
  int _genero;
  String _nombre;

  //getters y setters
  get genero {
    return _prefs.getInt('genero') ?? 1; //?? -- CONDICION QUE SI NO EXISTE
  }

  set genero(int value) {
    _prefs.setInt('genero', value);
  }
}
