module projeto;

import jsonizer.jsonize : jsonize, JsonizeMe;
import std.conv, std.path, std.string, std.file, std.json, jsonizer.tojson, jsonizer.fromjson, jsonizer.jsonize;
import estado;
class Projeto{
  mixin JsonizeMe;
  @jsonize string descricaoInicial;
  @jsonize Estado[] estados;
  private static Projeto singleton;

  static Projeto load(string path){
      string txt = readText(path);
      JSONValue json = parseJSON(txt);
      Projeto projeto = json.fromJSON!(Projeto);
      this.singleton = projeto;
      return projeto;
  }
  static Projeto getInstance(){
    return this.singleton;
  }

  Estado searchEstadoById(string id){
    foreach(Estado e; this.estados){
      if(e.id == id){
        return e;
      }
    }
    return null;
  }
}
