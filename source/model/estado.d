module estado;
import comando;
import jsonizer.jsonize : jsonize, JsonizeMe;
class Estado{
  mixin JsonizeMe;

  @jsonize string id;
  @jsonize string descricao;
  @jsonize Comando[] comandos;
}
